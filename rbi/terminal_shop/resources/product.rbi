# typed: strong

module TerminalShop
  module Resources
    class Product
      # List all products for sale in the Terminal shop.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::ProductListResponse) }
      def list(request_options: {}); end

      # Get a product by ID from the Terminal shop.
      sig do
        params(id: String, request_options: TerminalShop::RequestOpts)
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
