# frozen_string_literal: true

require 'json'
require 'net/http'
require 'uri'
require 'flat_api/errors'

# OAuth2 support for the Flat API.
#
# The public specification declares one security scheme: OAuth2 authorization-code with 23 scopes.
# A Personal Access Token is an OAuth access token for your own account, so passing a token straight
# to the client covers both cases.
#
# A refresh token is only issued when the authorization request sets access_type=offline.
#
# This module never stores a token. Persistence is deployment-specific, so refreshed tokens go to a
# callback you supply.
module FlatApi
  AUTHORIZE_URL = 'https://flat.io/auth/oauth'
  TOKEN_URL = 'https://api.flat.io/oauth/access_token'
  # Refresh slightly before nominal expiry, to avoid racing the server clock.
  EXPIRY_SKEW = 30

  Tokens = Struct.new(:access_token, :refresh_token, :expires_at, keyword_init: true) do
    def self.from_response(payload)
      expires_in = payload['expires_in']
      new(
        access_token: payload['access_token'],
        refresh_token: payload['refresh_token'],
        expires_at: expires_in ? Time.now.to_i + expires_in.to_i : nil
      )
    end

    def expired?
      !expires_at.nil? && Time.now.to_i >= expires_at - EXPIRY_SKEW
    end
  end

  # Builds the authorization URL and exchanges codes for tokens.
  class OAuth2Helper
    def initialize(client_id:, client_secret:, redirect_uri:)
      @client_id = client_id
      @client_secret = client_secret
      @redirect_uri = redirect_uri
    end

    # URL to send a user to. +offline+ is what yields a refresh token.
    def authorize_url(scopes:, state:, offline: true)
      params = {
        client_id: @client_id, redirect_uri: @redirect_uri, response_type: 'code',
        scope: Array(scopes).join(' '), state: state
      }
      params[:access_type] = 'offline' if offline
      "#{AUTHORIZE_URL}?#{URI.encode_www_form(params)}"
    end

    def exchange_code(code)
      token_request(grant_type: 'authorization_code', code: code, redirect_uri: @redirect_uri)
    end

    def refresh(refresh_token)
      token_request(grant_type: 'refresh_token', refresh_token: refresh_token)
    end

    private

    def token_request(**payload)
      response = Net::HTTP.post_form(
        URI(TOKEN_URL), payload.merge(client_id: @client_id, client_secret: @client_secret)
      )
      unless response.is_a?(Net::HTTPSuccess)
        raise FlatAuthenticationError.new(
          'OAuth2 token request failed; the user must re-authorize', status: response.code.to_i
        )
      end

      Tokens.from_response(JSON.parse(response.body))
    end
  end

  # Holds the current tokens and refreshes them at most once at a time.
  #
  # Single-flight matters: two concurrent requests hitting an expired token must not both refresh,
  # because the second refresh would invalidate the token the first just obtained.
  class TokenManager
    def initialize(tokens, helper: nil, on_token_refresh: nil)
      @tokens = tokens
      @helper = helper
      @on_token_refresh = on_token_refresh
      @mutex = Mutex.new
    end

    # Refreshes when the token has expired, which is the whole point of a TokenManager: a caller
    # installs this as Configuration#access_token_getter and never thinks about expiry again.
    # Returning @tokens.access_token unconditionally made Tokens#expired? dead code, and every
    # request after the expiry failed with a 401 that a refresh would have avoided.
    def access_token
      return @tokens.access_token unless @tokens.expired?

      @mutex.synchronize do
        # Checked again inside the lock: a thread that waited here may find the token already
        # refreshed, and refreshing twice would spend a second round trip and, with a provider
        # that rotates refresh tokens, invalidate the one the first thread just stored.
        next @tokens.access_token unless @tokens.expired?

        refresh_locked
      end
    end

    # Refreshes unconditionally. Use it to force a refresh; access_token already handles expiry.
    def refresh
      @mutex.synchronize { refresh_locked }
    end

    private

    def refresh_locked
      if @helper.nil? || @tokens.refresh_token.nil?
        raise FlatAuthenticationError,
              'the access token expired and no refresh token is available; re-authorize'
      end

      @tokens = @helper.refresh(@tokens.refresh_token)
      @on_token_refresh&.call(@tokens)
      @tokens.access_token
    end
  end
end
