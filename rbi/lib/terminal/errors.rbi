# typed: strong

module Terminal
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_reader :cause
  end

  class ConversionError < Terminal::Error
  end

  class APIError < Terminal::Error
    sig { returns(URI::Generic) }
    attr_reader :url

    sig { returns(T.nilable(Integer)) }
    attr_reader :status

    sig { returns(T.nilable(T.anything)) }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < Terminal::APIError
    sig { void }
    attr_reader :status

    sig { void }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < Terminal::APIConnectionError
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < Terminal::APIError
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass
      ).returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:)
    end

    sig { returns(Integer) }
    attr_reader :status

    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status:, body:, request:, response:, message: nil)
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
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end
end
