# frozen_string_literal: true

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
