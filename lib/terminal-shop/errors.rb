# frozen_string_literal: true

module TerminalShop
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < TerminalShop::Error
  end

  class APIError < TerminalShop::Error
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

  class APIConnectionError < TerminalShop::APIError
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

  class APITimeoutError < TerminalShop::APIConnectionError
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

  class APIStatusError < TerminalShop::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [TerminalShop::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        TerminalShop::BadRequestError.new(**kwargs)
      in 401
        TerminalShop::AuthenticationError.new(**kwargs)
      in 403
        TerminalShop::PermissionDeniedError.new(**kwargs)
      in 404
        TerminalShop::NotFoundError.new(**kwargs)
      in 409
        TerminalShop::ConflictError.new(**kwargs)
      in 422
        TerminalShop::UnprocessableEntityError.new(**kwargs)
      in 429
        TerminalShop::RateLimitError.new(**kwargs)
      in (500..)
        TerminalShop::InternalServerError.new(**kwargs)
      else
        TerminalShop::APIStatusError.new(**kwargs)
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

  class BadRequestError < TerminalShop::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < TerminalShop::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < TerminalShop::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < TerminalShop::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < TerminalShop::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < TerminalShop::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < TerminalShop::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < TerminalShop::APIStatusError
    HTTP_STATUS = (500..)
  end
end
