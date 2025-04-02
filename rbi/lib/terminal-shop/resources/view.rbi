# typed: strong

module TerminalShop
  module Resources
    class View
      # Get initial app data, including user, products, cart, addresses, cards,
      #   subscriptions, and orders.
      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)))
          .returns(TerminalShop::Models::ViewInitResponse)
      end
      def init(request_options: {})
      end

      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
