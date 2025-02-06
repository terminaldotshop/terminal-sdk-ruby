# typed: strong

module Terminal
  module Resources
    class Email
      sig do
        params(
          email: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::EmailCreateResponse)
      end
      def create(email:, request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
