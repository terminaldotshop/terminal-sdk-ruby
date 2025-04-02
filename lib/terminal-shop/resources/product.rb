# frozen_string_literal: true

module TerminalShop
  module Resources
    class Product
      # List all products for sale in the Terminal shop.
      #
      # @param params [TerminalShop::Models::ProductListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::ProductListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "product",
          model: TerminalShop::Models::ProductListResponse,
          options: params[:request_options]
        )
      end

      # Get a product by ID from the Terminal shop.
      #
      # @param id [String] ID of the product to get.
      #
      # @param params [TerminalShop::Models::ProductGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::ProductGetResponse]
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["product/%1$s", id],
          model: TerminalShop::Models::ProductGetResponse,
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
