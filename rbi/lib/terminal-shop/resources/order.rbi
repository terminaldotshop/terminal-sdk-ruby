# typed: strong

module TerminalShop
  module Resources
    class Order
      # Create an order without a cart. The order will be placed immediately.
      sig do
        params(
          address_id: String,
          card_id: String,
          variants: T::Hash[Symbol, Integer],
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::OrderCreateResponse)
      end
      def create(address_id:, card_id:, variants:, request_options: {})
      end

      # List the orders associated with the current user.
      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(TerminalShop::Models::OrderListResponse)
      end
      def list(request_options: {})
      end

      # Get the order with the given ID.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::OrderGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
