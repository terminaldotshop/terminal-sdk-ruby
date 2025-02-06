# frozen_string_literal: true

module Terminal
  module Resources
    class Cart
      # Convert the current user's cart to an order.
      #
      # @param params [Terminal::Models::CartConvertParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CartConvertResponse]
      #
      def convert(params = {})
        @client.request(
          method: :post,
          path: "cart/convert",
          model: Terminal::Models::CartConvertResponse,
          options: params[:request_options]
        )
      end

      # Get the current user's cart.
      #
      # @param params [Terminal::Models::CartGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CartGetResponse]
      #
      def get(params = {})
        @client.request(
          method: :get,
          path: "cart",
          model: Terminal::Models::CartGetResponse,
          options: params[:request_options]
        )
      end

      # Set the shipping address for the current user's cart.
      #
      # @param params [Terminal::Models::CartSetAddressParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :address_id ID of the shipping address to set for the current user's cart.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CartSetAddressResponse]
      #
      def set_address(params)
        parsed, options = Terminal::Models::CartSetAddressParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/address",
          body: parsed,
          model: Terminal::Models::CartSetAddressResponse,
          options: options
        )
      end

      # Set the credit card for the current user's cart.
      #
      # @param params [Terminal::Models::CartSetCardParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :card_id ID of the credit card to set for the current user's cart.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CartSetCardResponse]
      #
      def set_card(params)
        parsed, options = Terminal::Models::CartSetCardParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/card",
          body: parsed,
          model: Terminal::Models::CartSetCardResponse,
          options: options
        )
      end

      # Add an item to the current user's cart.
      #
      # @param params [Terminal::Models::CartSetItemParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :product_variant_id ID of the product variant to add to the cart.
      #
      #   @option params [Integer] :quantity Quantity of the item to add to the cart.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CartSetItemResponse]
      #
      def set_item(params)
        parsed, options = Terminal::Models::CartSetItemParams.dump_request(params)
        @client.request(
          method: :put,
          path: "cart/item",
          body: parsed,
          model: Terminal::Models::CartSetItemResponse,
          options: options
        )
      end

      # @param client [Terminal::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
