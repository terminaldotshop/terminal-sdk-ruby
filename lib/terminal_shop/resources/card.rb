# frozen_string_literal: true

module TerminalShop
  module Resources
    class Card
      # Some parameter documentations has been truncated, see
      # {TerminalShop::Models::CardCreateParams} for more details.
      #
      # Attach a credit card (tokenized via Stripe) to the current user.
      #
      # @overload create(token:, request_options: {})
      #
      # @param token [String] Stripe card token. Learn how to [create one here](https://docs.stripe.com/api/to
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CardCreateResponse]
      #
      # @see TerminalShop::Models::CardCreateParams
      def create(params)
        parsed, options = TerminalShop::CardCreateParams.dump_request(params)
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
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CardListResponse]
      #
      # @see TerminalShop::Models::CardListParams
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
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the card to delete.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CardDeleteResponse]
      #
      # @see TerminalShop::Models::CardDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["card/%1$s", id],
          model: TerminalShop::Models::CardDeleteResponse,
          options: params[:request_options]
        )
      end

      # Create a temporary URL for collecting credit card information for the current
      # user.
      #
      # @overload collect(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CardCollectResponse]
      #
      # @see TerminalShop::Models::CardCollectParams
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
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the card to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::CardGetResponse]
      #
      # @see TerminalShop::Models::CardGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["card/%1$s", id],
          model: TerminalShop::Models::CardGetResponse,
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
