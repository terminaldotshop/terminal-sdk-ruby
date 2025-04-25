# frozen_string_literal: true

module TerminalShop
  module Resources
    class Token
      # Create a personal access token.
      #
      # @overload create(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::TokenCreateResponse]
      #
      # @see TerminalShop::Models::TokenCreateParams
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
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::TokenListResponse]
      #
      # @see TerminalShop::Models::TokenListParams
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
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the personal token to delete.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::TokenDeleteResponse]
      #
      # @see TerminalShop::Models::TokenDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["token/%1$s", id],
          model: TerminalShop::Models::TokenDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the personal access token with the given ID.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the personal token to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::TokenGetResponse]
      #
      # @see TerminalShop::Models::TokenGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["token/%1$s", id],
          model: TerminalShop::Models::TokenGetResponse,
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
