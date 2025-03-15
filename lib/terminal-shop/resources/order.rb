# frozen_string_literal: true

module TerminalShop
  module Resources
    class Order
      # Create an order without a cart. The order will be placed immediately.
      #
      # @param params [TerminalShop::Models::OrderCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :address_id Shipping address ID.
      #
      #   @option params [String] :card_id Card ID.
      #
      #   @option params [Hash{Symbol=>Integer}] :variants Product variants to include in the order, along with their quantities.
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::OrderCreateResponse]
      def create(params)
        parsed, options = TerminalShop::Models::OrderCreateParams.dump_request(params)
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
      # @param params [TerminalShop::Models::OrderListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::OrderListResponse]
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
      # @param id [String] ID of the order to get.
      #
      # @param params [TerminalShop::Models::OrderGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::OrderGetResponse]
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["order/%0s", id],
          model: TerminalShop::Models::OrderGetResponse,
          options: params[:request_options]
        )
      end

      # @param client [TerminalShop::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
