# frozen_string_literal: true

module TerminalShop
  module Resources
    class View
      # Get initial app data, including user, products, cart, addresses, cards,
      #   subscriptions, and orders.
      #
      # @param params [TerminalShop::Models::ViewInitParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::ViewInitResponse]
      def init(params = {})
        @client.request(
          method: :get,
          path: "view/init",
          model: TerminalShop::Models::ViewInitResponse,
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
