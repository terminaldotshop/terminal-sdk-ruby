# frozen_string_literal: true

module Terminal
  module Resources
    class App
      # Create an app.
      #
      # @param params [Terminal::Models::AppCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id Unique object identifier. The format and length of IDs may change over time.
      #
      #   @option params [String] :name Name of the app.
      #
      #   @option params [String] :redirect_uri Redirect URI of the app.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AppCreateResponse]
      #
      def create(params)
        parsed, options = Terminal::Models::AppCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "app",
          body: parsed,
          model: Terminal::Models::AppCreateResponse,
          options: options
        )
      end

      # List the current user's registered apps.
      #
      # @param params [Terminal::Models::AppListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AppListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "app",
          model: Terminal::Models::AppListResponse,
          options: params[:request_options]
        )
      end

      # Delete the app with the given ID.
      #
      # @param id [String] ID of the app to delete.
      #
      # @param params [Terminal::Models::AppDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AppDeleteResponse]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["app/%0s", id],
          model: Terminal::Models::AppDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the app with the given ID.
      #
      # @param id [String] ID of the app to get.
      #
      # @param params [Terminal::Models::AppGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AppGetResponse]
      #
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["app/%0s", id],
          model: Terminal::Models::AppGetResponse,
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
