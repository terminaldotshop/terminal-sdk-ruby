# frozen_string_literal: true

module TerminalShop
  module Resources
    class Card
      # Attach a credit card (tokenized via Stripe) to the current user.
      #
      # @param params [TerminalShop::Models::CardCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :token Stripe card token. Learn how to
      #     [create one here](https://docs.stripe.com/api/tokens/create_card).
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::CardCreateResponse]
      def create(params)
        parsed, options = TerminalShop::Models::CardCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "card",
          body: parsed,
          model: TerminalShop::Models::CardCreateResponse,
          options: options
        )
      end

      # List the credit cards associated with the current user.
      #
      # @param params [TerminalShop::Models::CardListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::CardListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "card",
          model: TerminalShop::Models::CardListResponse,
          options: params[:request_options]
        )
      end

      # Delete a credit card associated with the current user.
      #
      # @param id [String] ID of the card to delete.
      #
      # @param params [TerminalShop::Models::CardDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::CardDeleteResponse]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["card/%1$s", id],
          model: TerminalShop::Models::CardDeleteResponse,
          options: params[:request_options]
        )
      end

      # Create a temporary URL for collecting credit card information for the current
      #   user.
      #
      # @param params [TerminalShop::Models::CardCollectParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::CardCollectResponse]
      def collect(params = {})
        @client.request(
          method: :post,
          path: "card/collect",
          model: TerminalShop::Models::CardCollectResponse,
          options: params[:request_options]
        )
      end

      # Get a credit card by ID associated with the current user.
      #
      # @param id [String] ID of the card to get.
      #
      # @param params [TerminalShop::Models::CardGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::CardGetResponse]
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["card/%1$s", id],
          model: TerminalShop::Models::CardGetResponse,
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
