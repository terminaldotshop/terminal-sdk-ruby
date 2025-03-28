# typed: strong

module TerminalShop
  module Resources
    class Email
      # Subscribe to email updates from Terminal.
      sig do
        params(
          email: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash))
        )
          .returns(TerminalShop::Models::EmailCreateResponse)
      end
      def create(
        # Email address to subscribe to Terminal updates with.
        email:,
        request_options: {}
      )
      end

      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
