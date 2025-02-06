# typed: strong

module TerminalShop
  module Resources
    class Email
      sig do
        params(
          email: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::EmailCreateResponse)
      end
      def create(email:, request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
