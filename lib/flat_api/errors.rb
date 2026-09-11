# frozen_string_literal: true

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
