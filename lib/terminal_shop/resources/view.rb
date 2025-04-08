# frozen_string_literal: true

module TerminalShop
  module Resources
    class View
      # Get initial app data, including user, products, cart, addresses, cards,
      # subscriptions, and orders.
      #
      # @overload init(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::ViewInitResponse]
      #
      # @see TerminalShop::Models::ViewInitParams
      def init(params = {})
        @client.request(
          method: :get,
          path: "view/init",
          model: TerminalShop::Models::ViewInitResponse,
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
