# typed: strong

module TerminalShop
  module Resources
    class Token
      # Create a personal access token.
      sig do
        params(request_options: TerminalShop::RequestOptions::OrHash).returns(
          TerminalShop::Models::TokenCreateResponse
        )
      end
      def create(request_options: {})
      end

      # List the current user's personal access tokens.
      sig do
        params(request_options: TerminalShop::RequestOptions::OrHash).returns(
          TerminalShop::Models::TokenListResponse
        )
      end
      def list(request_options: {})
      end

      # Delete the personal access token with the given ID.
      sig do
        params(
          id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::TokenDeleteResponse)
      end
      def delete(
        # ID of the personal token to delete.
        id,
        request_options: {}
      )
      end

      # Get the personal access token with the given ID.
      sig do
        params(
          id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(TerminalShop::Models::TokenGetResponse)
      end
      def get(
        # ID of the personal token to get.
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
