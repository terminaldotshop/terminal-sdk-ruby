# typed: strong

module TerminalShop
  module Resources
    class App
      # Create an app.
      sig do
        params(
          name: String,
          redirect_uri: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::AppCreateResponse)
      end
      def create(name:, redirect_uri:, request_options: {})
      end

      # List the current user's registered apps.
      sig do
        params(request_options: TerminalShop::RequestOptions::OrHash).returns(
          TerminalShop::Models::AppListResponse
        )
      end
      def list(request_options: {})
      end

      # Delete the app with the given ID.
      sig do
        params(
          id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::AppDeleteResponse)
      end
      def delete(
        # ID of the app to delete.
        id,
        request_options: {}
      )
      end

      # Get the app with the given ID.
      sig do
        params(
          id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::AppGetResponse)
      end
      def get(
        # ID of the app to get.
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
