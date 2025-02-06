# frozen_string_literal: true

module Terminal
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Terminal::Error
  end

  class APIError < Terminal::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < Terminal::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < Terminal::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < Terminal::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    #
    # @return [Terminal::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        Terminal::BadRequestError.new(**kwargs)
      in 401
        Terminal::AuthenticationError.new(**kwargs)
      in 403
        Terminal::PermissionDeniedError.new(**kwargs)
      in 404
        Terminal::NotFoundError.new(**kwargs)
      in 409
        Terminal::ConflictError.new(**kwargs)
      in 422
        Terminal::UnprocessableEntityError.new(**kwargs)
      in 429
        Terminal::RateLimitError.new(**kwargs)
      in (500..)
        Terminal::InternalServerError.new(**kwargs)
      else
        Terminal::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < Terminal::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Terminal::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Terminal::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Terminal::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Terminal::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Terminal::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Terminal::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Terminal::APIStatusError
    HTTP_STATUS = (500..)
  end
end
