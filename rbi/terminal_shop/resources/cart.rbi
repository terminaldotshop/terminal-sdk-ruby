# typed: strong

module TerminalShop
  module Resources
    class Cart
      # Clear the current user's cart.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::CartClearResponse) }
      def clear(request_options: {}); end

      # Convert the current user's cart to an order.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::CartConvertResponse) }
      def convert(request_options: {}); end

      # Get the current user's cart.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::CartGetResponse) }
      def get(request_options: {}); end

      # Set the shipping address for the current user's cart.
      sig do
        params(address_id: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CartSetAddressResponse)
      end
      def set_address(
        # ID of the shipping address to set for the current user's cart.
        address_id:,
        request_options: {}
      ); end
      # Set the credit card for the current user's cart.
      sig do
        params(card_id: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CartSetCardResponse)
      end
      def set_card(
        # ID of the credit card to set for the current user's cart.
        card_id:,
        request_options: {}
      ); end
      # Add an item to the current user's cart.
      sig do
        params(product_variant_id: String, quantity: Integer, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CartSetItemResponse)
      end
      def set_item(
        # ID of the product variant to add to the cart.
        product_variant_id:,
        # Quantity of the item to add to the cart.
        quantity:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
