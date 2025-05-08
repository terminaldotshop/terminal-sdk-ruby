# typed: strong

module TerminalShop
  module Resources
    class Email
      # Subscribe to email updates from Terminal.
      sig do
        params(
          email: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::EmailCreateResponse)
      end
      def create(
        # Email address to subscribe to Terminal updates with.
        email:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
