# frozen_string_literal: true

module Terminal
  module Resources
    class Card
      # Attach a credit card (tokenized via Stripe) to the current user.
      #
      # @param params [Terminal::Models::CardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token Stripe card token. Learn how to
      #     [create one here](https://docs.stripe.com/api/tokens/create_card).
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CardCreateResponse]
      #
      def create(params)
        parsed, options = Terminal::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "card",
          body: parsed,
          model: Terminal::Models::CardCreateResponse,
          options: options
        )
      end

      # List the credit cards associated with the current user.
      #
      # @param params [Terminal::Models::CardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CardListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "card",
          model: Terminal::Models::CardListResponse,
          options: params[:request_options]
        )
      end

      # Delete a credit card associated with the current user.
      #
      # @param id [String] ID of the card to delete.
      #
      # @param params [Terminal::Models::CardDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CardDeleteResponse]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["card/%0s", id],
          model: Terminal::Models::CardDeleteResponse,
          options: params[:request_options]
        )
      end

      # Create a temporary URL for collecting credit card information for the current
      #   user.
      #
      # @param params [Terminal::Models::CardCollectParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::CardCollectResponse]
      #
      def collect(params = {})
        @client.request(
          method: :post,
          path: "card/collect",
          model: Terminal::Models::CardCollectResponse,
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
