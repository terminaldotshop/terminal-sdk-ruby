# frozen_string_literal: true

module TerminalShop
  module Resources
    class Order
      # Create an order without a cart. The order will be placed immediately.
      #
      # @overload create(address_id:, card_id:, variants:, request_options: {})
      #
      # @param address_id [String] Shipping address ID.
      #
      # @param card_id [String] Card ID.
      #
      # @param variants [Hash{Symbol=>Integer}] Product variants to include in the order, along with their quantities.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::OrderCreateResponse]
      #
      # @see TerminalShop::Models::OrderCreateParams
      def create(params)
        parsed, options = TerminalShop::OrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "order",
          body: parsed,
          model: TerminalShop::Models::OrderCreateResponse,
          options: options
        )
      end

      # List the orders associated with the current user.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::OrderListResponse]
      #
      # @see TerminalShop::Models::OrderListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "order",
          model: TerminalShop::Models::OrderListResponse,
          options: params[:request_options]
        )
      end

      # Get the order with the given ID.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the order to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::OrderGetResponse]
      #
      # @see TerminalShop::Models::OrderGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["order/%1$s", id],
          model: TerminalShop::Models::OrderGetResponse,
          options: params[:request_options]
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
