# frozen_string_literal: true

module Terminal
  module Resources
    class Product
      # List all products for sale in the Terminal shop.
      #
      # @param params [Terminal::Models::ProductListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::ProductListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "product",
          model: Terminal::Models::ProductListResponse,
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
