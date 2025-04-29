# frozen_string_literal: true

module TerminalShop
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < TerminalShop::Errors::Error
    end

    class APIError < TerminalShop::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < TerminalShop::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class APITimeoutError < TerminalShop::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class APIStatusError < TerminalShop::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [TerminalShop::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          TerminalShop::Errors::BadRequestError.new(**kwargs)
        in 401
          TerminalShop::Errors::AuthenticationError.new(**kwargs)
        in 403
          TerminalShop::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          TerminalShop::Errors::NotFoundError.new(**kwargs)
        in 409
          TerminalShop::Errors::ConflictError.new(**kwargs)
        in 422
          TerminalShop::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          TerminalShop::Errors::RateLimitError.new(**kwargs)
        in (500..)
          TerminalShop::Errors::InternalServerError.new(**kwargs)
        else
          TerminalShop::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class BadRequestError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < TerminalShop::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
