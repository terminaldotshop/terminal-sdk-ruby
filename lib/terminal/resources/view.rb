# frozen_string_literal: true

module Terminal
  module Resources
    class View
      # Get initial app data, including user, products, cart, addresses, cards,
      #   subscriptions, and orders.
      #
      # @param params [Terminal::Models::ViewInitParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::ViewInitResponse]
      #
      def init(params = {})
        @client.request(
          method: :get,
          path: "view/init",
          model: Terminal::Models::ViewInitResponse,
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
