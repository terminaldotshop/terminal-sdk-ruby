# frozen_string_literal: true

module TerminalShop
  module Resources
    class Email
      # Subscribe to email updates from Terminal.
      #
      # @param params [TerminalShop::Models::EmailCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email Email address to subscribe to Terminal updates with.
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::EmailCreateResponse]
      #
      def create(params)
        parsed, options = TerminalShop::Models::EmailCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email",
          body: parsed,
          model: TerminalShop::Models::EmailCreateResponse,
          options: options
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
