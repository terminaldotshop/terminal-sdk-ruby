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
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::Util::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::OrderCreateResponse)
      end
      def create(
        # Shipping address ID.
        address_id:,
        # Card ID.
        card_id:,
        # Product variants to include in the order, along with their quantities.
        variants:,
        request_options: {}
      )
      end

      # List the orders associated with the current user.
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::Util::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::OrderListResponse)
      end
      def list(request_options: {})
      end

      # Get the order with the given ID.
      sig do
        params(
          id: String,
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::Util::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::OrderGetResponse)
      end
      def get(
        # ID of the order to get.
        id,
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
