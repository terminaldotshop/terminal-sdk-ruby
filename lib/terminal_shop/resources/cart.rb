# frozen_string_literal: true

module TerminalShop
  module Resources
    class Cart
      # Clear the current user's cart.
      #
      # @overload clear(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartClearResponse]
      #
      # @see TerminalShop::Models::CartClearParams
      def clear(params = {})
        @client.request(
          method: :delete,
          path: "cart",
          model: TerminalShop::Models::CartClearResponse,
          options: params[:request_options]
        )
      end

      # Convert the current user's cart to an order.
      #
      # @overload convert(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartConvertResponse]
      #
      # @see TerminalShop::Models::CartConvertParams
      def convert(params = {})
        @client.request(
          method: :post,
          path: "cart/convert",
          model: TerminalShop::Models::CartConvertResponse,
          options: params[:request_options]
        )
      end

      # Get the current user's cart.
      #
      # @overload get(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartGetResponse]
      #
      # @see TerminalShop::Models::CartGetParams
      def get(params = {})
        @client.request(
          method: :get,
          path: "cart",
          model: TerminalShop::Models::CartGetResponse,
          options: params[:request_options]
        )
      end

      # Set the shipping address for the current user's cart.
      #
      # @overload set_address(address_id:, request_options: {})
      #
      # @param address_id [String] ID of the shipping address to set for the current user's cart.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartSetAddressResponse]
      #
      # @see TerminalShop::Models::CartSetAddressParams
      def set_address(params)
        parsed, options = TerminalShop::CartSetAddressParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/address",
          body: parsed,
          model: TerminalShop::Models::CartSetAddressResponse,
          options: options
        )
      end

      # Set the credit card for the current user's cart.
      #
      # @overload set_card(card_id:, request_options: {})
      #
      # @param card_id [String] ID of the credit card to set for the current user's cart.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartSetCardResponse]
      #
      # @see TerminalShop::Models::CartSetCardParams
      def set_card(params)
        parsed, options = TerminalShop::CartSetCardParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/card",
          body: parsed,
          model: TerminalShop::Models::CartSetCardResponse,
          options: options
        )
      end

      # Add an item to the current user's cart.
      #
      # @overload set_item(product_variant_id:, quantity:, request_options: {})
      #
      # @param product_variant_id [String] ID of the product variant to add to the cart.
      #
      # @param quantity [Integer] Quantity of the item to add to the cart.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CartSetItemResponse]
      #
      # @see TerminalShop::Models::CartSetItemParams
      def set_item(params)
        parsed, options = TerminalShop::CartSetItemParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/item",
          body: parsed,
          model: TerminalShop::Models::CartSetItemResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [TerminalShop::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
