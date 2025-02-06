# frozen_string_literal: true

module Terminal
  module Resources
    class Order
      # List the orders associated with the current user.
      #
      # @param params [Terminal::Models::OrderListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::OrderListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "order",
          model: Terminal::Models::OrderListResponse,
          options: params[:request_options]
        )
      end

      # Get the order with the given ID.
      #
      # @param id [String] ID of the order to get.
      #
      # @param params [Terminal::Models::OrderGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::OrderGetResponse]
      #
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["order/%0s", id],
          model: Terminal::Models::OrderGetResponse,
          options: params[:request_options]
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
