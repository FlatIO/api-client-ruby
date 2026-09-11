#!/usr/bin/env python3
"""Typed errors, retry and pagination for the Ruby SDK (FR-006d to FR-006h). Idempotent."""

from __future__ import annotations

import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent.parent
LIB = ROOT / "lib" / "flat_api"
LIB.mkdir(parents=True, exist_ok=True)

(LIB / "errors.rb").write_text('''# frozen_string_literal: true

# Typed errors for the Flat API.
#
# Rescue the error class, not the status code: rate limiting and authorization failures both return
# HTTP 403 and are separated only by the response body's +code+.
module FlatApi
  RATE_LIMIT_CODE = 'API_RATE_LIMIT_EXCEEDED'
  QUOTA_CODES = %w[QUOTA_EXCEEDED CREDITS_EXHAUSTED OMR_CREDITS_EXHAUSTED].freeze

  class FlatError < StandardError
    attr_reader :status, :code, :request_id, :headers, :body

    def initialize(message, status: nil, code: nil, request_id: nil, headers: nil, body: nil)
      super(message)
      @status = status
      @code = code
      # Present only for internal and backend errors, so treat it as optional.
      @request_id = request_id
      @headers = headers || {}
      @body = body
    end

    def to_s
      parts = [super]
      parts << "code=#{code}" if code
      parts << "status=#{status}" if status
      parts << "id=#{request_id}" if request_id
      parts.join(' ')
    end
  end

  # The token is missing, invalid or expired, or a refresh failed. Re-authorize.
  class FlatAuthenticationError < FlatError; end
  # Authenticated but not permitted: a missing scope or insufficient permission.
  class FlatAuthorizationError < FlatError; end
  # The request body or parameters failed validation.
  class FlatValidationError < FlatError; end
  # The resource does not exist, or is not visible to this token.
  class FlatNotFoundError < FlatError; end
  # A metered resource, such as OMR credits, is exhausted.
  class FlatQuotaError < FlatError; end
  # An internal or backend error. +request_id+ is normally set here.
  class FlatServerError < FlatError; end

  # The account or IP exceeded its request quota. Returned as HTTP 403, not 429.
  class FlatRateLimitError < FlatError
    attr_reader :limit, :remaining, :reset

    def initialize(message, **kwargs)
      super
      @limit = int_header('X-RateLimit-Limit')
      @remaining = int_header('X-RateLimit-Remaining')
      # UTC epoch seconds at which the window resets. Flat sends no Retry-After header.
      @reset = int_header('X-RateLimit-Reset')
    end

    private

    def int_header(name)
      pair = headers.find { |k, _| k.to_s.downcase == name.downcase }
      pair && Integer(pair[1], exception: false)
    end
  end

  # Build the right error for a non-2xx response.
  def self.error_from_response(status, body, headers = {})
    payload = body.is_a?(Hash) ? body : {}
    code = payload['code'] || payload[:code]
    message = payload['message'] || payload[:message] || "HTTP #{status}"
    opts = {
      status: status, code: code, request_id: payload['id'] || payload[:id],
      headers: headers, body: body
    }

    return FlatRateLimitError.new(message, **opts) if status == 403 && code == RATE_LIMIT_CODE
    return FlatQuotaError.new(message, **opts) if QUOTA_CODES.include?(code)
    return FlatAuthenticationError.new(message, **opts) if status == 401
    return FlatAuthorizationError.new(message, **opts) if status == 403
    return FlatNotFoundError.new(message, **opts) if status == 404
    return FlatValidationError.new(message, **opts) if [400, 422].include?(status)
    return FlatServerError.new(message, **opts) if status >= 500

    FlatError.new(message, **opts)
  end
end
''')

(LIB / "retry.rb").write_text('''# frozen_string_literal: true

require 'flat_api/errors'

# Retry policy for the Flat API.
#
# Flat does not follow the usual conventions, and getting this wrong is silent:
#   * rate limiting returns 403, not 429
#   * there is no Retry-After header; the reset is X-RateLimit-Reset, UTC epoch seconds
#   * a plain 403 is a genuine authorization failure and must never be retried
module FlatApi
  # Methods safe to replay. A non-idempotent request that may already have been applied is not.
  IDEMPOTENT_METHODS = %w[GET HEAD OPTIONS PUT DELETE].freeze
  MAX_RATE_LIMIT_WAIT = 300.0

  class RetryPolicy
    attr_reader :attempts, :backoff_base, :backoff_max, :jitter, :respect_rate_limit_reset

    def initialize(attempts: 3, backoff_base: 0.5, backoff_max: 30.0, jitter: 0.25,
                   respect_rate_limit_reset: true)
      @attempts = attempts
      @backoff_base = backoff_base
      @backoff_max = backoff_max
      @jitter = jitter
      @respect_rate_limit_reset = respect_rate_limit_reset
    end

    # No retries. Errors still arrive typed, and a rate-limit error still carries its reset.
    def self.disabled
      new(attempts: 1)
    end

    def enabled?
      attempts > 1
    end

    def should_retry?(error, method, attempt)
      return false if attempt >= attempts
      return false unless IDEMPOTENT_METHODS.include?(method.to_s.upcase)
      return true if error.is_a?(FlatRateLimitError)
      return true if error.is_a?(FlatServerError)

      # A transport failure before the request was sent is safe to replay.
      error.is_a?(IOError) || error.is_a?(SystemCallError)
    end

    def delay_for(error, attempt)
      if respect_rate_limit_reset && error.is_a?(FlatRateLimitError) && error.reset
        wait = error.reset - Time.now.to_i
        return [wait + rand * jitter, MAX_RATE_LIMIT_WAIT].min if wait.positive?
      end
      exponential = [backoff_base * (2**(attempt - 1)), backoff_max].min
      exponential + (rand * jitter * exponential)
    end
  end
end
''')

(LIB / "pagination.rb").write_text('''# frozen_string_literal: true

# Cursor pagination for the Flat API.
#
# Eight operations at v2.25.0 are cursor-paginated, identified by a +next+ query parameter. That
# parameter is a shared component (#/components/parameters/next): any tool that reads an
# operation's parameters without resolving $ref under-counts them and ships collections that
# silently truncate.
#
# The cursor is not in the response body. It arrives in the Link header, which the specification
# does not declare, so it is parsed at runtime.
require 'uri'

module FlatApi
  module Pagination
    LINK = /<([^>]+)>\\s*;\\s*rel="([^"]+)"/.freeze

    module_function

    # Parse an RFC 5988 Link header into { rel => url }.
    def parse_link_header(value)
      return {} if value.nil? || value.empty?

      value.scan(LINK).to_h { |url, rel| [rel, url] }
    end

    # Extract the opaque +next+ cursor from a response's Link header, if any.
    #
    # Decoded, not captured raw. The cursor arrives percent-encoded inside the Link header's
    # URL, and the client encodes whatever it is given when building the next request, so
    # passing the encoded form through sends it encoded twice and the server rejects the very
    # cursor it issued. URI.decode_www_form applies the rules the server used to write it, so
    # an opaque value round-trips exactly.
    def next_cursor(headers)
      return nil if headers.nil?

      _, link = headers.find { |k, _| k.to_s.downcase == 'link' }
      url = parse_link_header(link)['next']
      return nil if url.nil?

      query = begin
        URI.parse(url).query
      rescue URI::InvalidURIError
        nil
      end
      return nil if query.nil? || query.empty?

      URI.decode_www_form(query).assoc('next')&.last
    end

    # Every item across all pages of a cursor-paginated operation, as a lazy Enumerator.
    #
    # +fetch_page+ is called with a params hash and must return [data, status, headers], which is
    # exactly what the generated *_with_http_info methods return. The cursor lives in the headers.
    #
    # A token expiring mid-traversal is refreshed by the client and the traversal resumes from the
    # same cursor, so no page is skipped or repeated.
    #
    #   FlatApi::Pagination.paginate(user: 'me') do |params|
    #     api.get_user_scores_with_http_info('me', params)
    #   end.each { |score| puts score.title }
    def paginate(**params, &fetch_page)
      raise ArgumentError, 'paginate requires a block that fetches one page' unless fetch_page

      Enumerator.new do |yielder|
        # +_next+, not +next+. `next` is a Ruby keyword, so the generator names the option
        # +:_next+ and maps it back to the +next+ query parameter itself. Passing +:next+ here
        # sends nothing: every iteration refetches page one, the loop guard below sees a cursor it
        # has already used, and the traversal stops after the first page while looking successful.
        cursor = params.delete(:_next) || params.delete(:next)
        seen = {}

        loop do
          page_params = cursor ? params.merge(_next: cursor) : params
          data, _status, headers = fetch_page.call(page_params)
          Array(data).each { |item| yielder << item }

          cursor = next_cursor(headers)
          break if cursor.nil?
          # A server that returns a cursor it already gave us would loop forever.
          break if seen[cursor]

          seen[cursor] = true
        end
      end
    end
  end
end
''')

# Writing errors.rb is not enough: nothing raises those classes unless the request path is taught
# to. The generated client raises its own ApiError, so a caller who follows the README and rescues
# FlatNotFoundError rescues nothing. Rewire the one raise site that carries a real HTTP status.
CLIENT = LIB / "api_client.rb"
client = CLIENT.read_text()

generated = """            fail ApiError.new(code: response.status,
                              response_headers: response.headers,
                              response_body: response.body),
                 response.reason_phrase"""
flat = """            fail FlatApi.error_from_response(
              response.status,
              (begin
                 JSON.parse(response.body)
               rescue StandardError
                 response.body
               end),
              response.headers || {}
            )"""

if generated not in client and "error_from_response" not in client:
    sys.exit("20_errors: could not find the raise site in api_client.rb (FR-025)")

if generated in client:
    client = client.replace(generated, flat, 1)

# errors.rb is required from flat_api.rb before api_client, so no extra require is needed here,
# but JSON is: the generated client parses bodies elsewhere through its own deserializer.
if "require 'json'" not in client:
    client = client.replace("require 'time'\n", "require 'time'\nrequire 'json'\n", 1)

# Nothing called RetryPolicy. It was defined, documented and advertised in the README, and every
# request went straight past it: the first 403 from a rate limit, or the first 502, reached the
# caller as a failure. Wrap the single request path rather than each of the 127 generated methods.
generated_entry = "    def call_api(http_method, path, opts = {})"
retried_entry = "    def call_api_once(http_method, path, opts = {})"
# A marker, not the presence of call_api: after patching, call_api is the wrapper, so a test on
# the entry point alone re-wraps the wrapper on every run. Re-applied twice that produced a
# call_api_once that called itself. check_idempotency.sh is what caught it.
RETRY_MARKER = "# BEGIN retry wrapper (tools/patches/20_errors.py)"

if generated_entry not in client and RETRY_MARKER not in client:
    sys.exit("20_errors: could not find call_api in api_client.rb (FR-025)")

if RETRY_MARKER not in client:
    client = client.replace(generated_entry, retried_entry, 1)
    wrapper = """    # BEGIN retry wrapper (tools/patches/20_errors.py)
    # Every request goes through the retry policy, which is why it wraps call_api_once rather
    # than living in each of the generated methods. The decision needs the typed error and not the
    # status code: Flat returns 403 both for rate limiting and for a genuine authorization failure,
    # and only the response body's +code+ separates them. See RetryPolicy.
    def call_api(http_method, path, opts = {})
      policy = @config.retry_policy || RetryPolicy.disabled
      attempt = 0

      begin
        attempt += 1
        call_api_once(http_method, path, opts)
      rescue StandardError => e
        raise unless policy.should_retry?(e, http_method, attempt)

        sleep(policy.delay_for(e, attempt))
        retry
      end
    end
    # END retry wrapper (tools/patches/20_errors.py)

"""
    client = client.replace(retried_entry, wrapper + retried_entry, 1)

CLIENT.write_text(client)

# RetryPolicy has to be reachable from configuration, or it cannot be turned off or tuned.
CONFIG = LIB / "configuration.rb"
config_src = CONFIG.read_text()
config_anchor = "    attr_accessor :timeout\n"
if "retry_policy" not in config_src:
    if config_anchor not in config_src:
        sys.exit("20_errors: could not find the timeout accessor in configuration.rb (FR-025)")
    config_src = config_src.replace(
        config_anchor,
        config_anchor
        + """
    # The retry policy applied to every request. Set RetryPolicy.disabled to turn retries off;
    # errors still arrive typed and a rate-limit error still carries its reset.
    attr_accessor :retry_policy
""",
        1,
    )
    # Default it in the constructor, next to the other defaults.
    ctor_anchor = "      @timeout = "
    if ctor_anchor in config_src:
        line_end = config_src.index("\n", config_src.index(ctor_anchor)) + 1
        config_src = (
            config_src[:line_end] + "      @retry_policy = RetryPolicy.new\n" + config_src[line_end:]
        )
    else:
        sys.exit("20_errors: could not find the timeout default in configuration.rb (FR-025)")
    CONFIG.write_text(config_src)

print("    errors: wrote errors.rb, retry.rb, pagination.rb, raised typed errors and applied the retry policy in api_client.rb")
