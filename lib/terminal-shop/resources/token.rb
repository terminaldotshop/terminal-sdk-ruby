# frozen_string_literal: true

module TerminalShop
  module Resources
    class Token
      # Create a personal access token.
      #
      # @param params [TerminalShop::Models::TokenCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::TokenCreateResponse]
      def create(params = {})
        @client.request(
          method: :post,
          path: "token",
          model: TerminalShop::Models::TokenCreateResponse,
          options: params[:request_options]
        )
      end

      # List the current user's personal access tokens.
      #
      # @param params [TerminalShop::Models::TokenListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::TokenListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "token",
          model: TerminalShop::Models::TokenListResponse,
          options: params[:request_options]
        )
      end

      # Delete the personal access token with the given ID.
      #
      # @param id [String] ID of the personal token to delete.
      #
      # @param params [TerminalShop::Models::TokenDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::TokenDeleteResponse]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["token/%0s", id],
          model: TerminalShop::Models::TokenDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the personal access token with the given ID.
      #
      # @param id [String] ID of the personal token to get.
      #
      # @param params [TerminalShop::Models::TokenGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::TokenGetResponse]
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["token/%0s", id],
          model: TerminalShop::Models::TokenGetResponse,
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
