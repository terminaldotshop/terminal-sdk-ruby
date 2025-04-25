# frozen_string_literal: true

module TerminalShop
  module Resources
    class Product
      # List all products for sale in the Terminal shop.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::ProductListResponse]
      #
      # @see TerminalShop::Models::ProductListParams
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
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the product to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::ProductGetResponse]
      #
      # @see TerminalShop::Models::ProductGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["product/%1$s", id],
          model: TerminalShop::Models::ProductGetResponse,
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
