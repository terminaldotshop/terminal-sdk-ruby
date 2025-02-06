# frozen_string_literal: true

module Terminal
  module Resources
    class Email
      # Subscribe to email updates from Terminal.
      #
      # @param params [Terminal::Models::EmailCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email Email address to subscribe to Terminal updates with.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::EmailCreateResponse]
      #
      def create(params)
        parsed, options = Terminal::Models::EmailCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "email",
          body: parsed,
          model: Terminal::Models::EmailCreateResponse,
          options: options
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
