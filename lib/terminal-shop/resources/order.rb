# frozen_string_literal: true

module TerminalShop
  module Resources
    class Order
      # List the orders associated with the current user.
      #
      # @param params [TerminalShop::Models::OrderListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::OrderListResponse]
      #
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
      #
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["order/%0s", id],
          model: TerminalShop::Models::OrderGetResponse,
          options: params[:request_options]
        )
      end

      # @param client [TerminalShop::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
