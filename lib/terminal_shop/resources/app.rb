# frozen_string_literal: true

module TerminalShop
  module Resources
    class App
      # Create an app.
      #
      # @overload create(name:, redirect_uri:, request_options: {})
      #
      # @param name [String]
      # @param redirect_uri [String]
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::AppCreateResponse]
      #
      # @see TerminalShop::Models::AppCreateParams
      def create(params)
        parsed, options = TerminalShop::Models::AppCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "app",
          body: parsed,
          model: TerminalShop::Models::AppCreateResponse,
          options: options
        )
      end

      # List the current user's registered apps.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::AppListResponse]
      #
      # @see TerminalShop::Models::AppListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "app",
          model: TerminalShop::Models::AppListResponse,
          options: params[:request_options]
        )
      end

      # Delete the app with the given ID.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the app to delete.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::AppDeleteResponse]
      #
      # @see TerminalShop::Models::AppDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["app/%1$s", id],
          model: TerminalShop::Models::AppDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the app with the given ID.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the app to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::AppGetResponse]
      #
      # @see TerminalShop::Models::AppGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["app/%1$s", id],
          model: TerminalShop::Models::AppGetResponse,
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
