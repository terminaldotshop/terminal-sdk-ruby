# frozen_string_literal: true

module Terminal
  module Resources
    class Token
      # Create a personal access token.
      #
      # @param params [Terminal::Models::TokenCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::TokenCreateResponse]
      #
      def create(params = {})
        @client.request(
          method: :post,
          path: "token",
          model: Terminal::Models::TokenCreateResponse,
          options: params[:request_options]
        )
      end

      # List the current user's personal access tokens.
      #
      # @param params [Terminal::Models::TokenListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::TokenListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "token",
          model: Terminal::Models::TokenListResponse,
          options: params[:request_options]
        )
      end

      # Delete the personal access token with the given ID.
      #
      # @param id [String] ID of the personal token to delete.
      #
      # @param params [Terminal::Models::TokenDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::TokenDeleteResponse]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["token/%0s", id],
          model: Terminal::Models::TokenDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the personal access token with the given ID.
      #
      # @param id [String] ID of the personal token to get.
      #
      # @param params [Terminal::Models::TokenGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::TokenGetResponse]
      #
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["token/%0s", id],
          model: Terminal::Models::TokenGetResponse,
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
