# typed: strong

module TerminalShop
  module Resources
    class Product
      # List all products for sale in the Terminal shop.
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::ProductListResponse)
      end
      def list(request_options: {}); end

      # Get a product by ID from the Terminal shop.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::ProductGetResponse)
      end
      def get(
        # ID of the product to get.
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
