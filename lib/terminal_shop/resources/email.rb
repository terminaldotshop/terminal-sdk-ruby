# frozen_string_literal: true

module TerminalShop
  module Resources
    class Email
      # Subscribe to email updates from Terminal.
      #
      # @overload create(email:, request_options: {})
      #
      # @param email [String] Email address to subscribe to Terminal updates with.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::EmailCreateResponse]
      #
      # @see TerminalShop::Models::EmailCreateParams
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

      # @api private
      #
      # @param client [TerminalShop::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
