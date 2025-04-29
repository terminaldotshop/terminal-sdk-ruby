# typed: strong

module TerminalShop
  module Resources
    class Card
      # Attach a credit card (tokenized via Stripe) to the current user.
      sig do
        params(token: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CardCreateResponse)
      end
      def create(
        # Stripe card token. Learn how to
        # [create one here](https://docs.stripe.com/api/tokens/create_card).
        token:,
        request_options: {}
      ); end
      # List the credit cards associated with the current user.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::CardListResponse) }
      def list(request_options: {}); end

      # Delete a credit card associated with the current user.
      sig do
        params(id: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CardDeleteResponse)
      end
      def delete(
        # ID of the card to delete.
        id,
        request_options: {}
      ); end
      # Create a temporary URL for collecting credit card information for the current
      # user.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::CardCollectResponse) }
      def collect(request_options: {}); end

      # Get a credit card by ID associated with the current user.
      sig do
        params(id: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::CardGetResponse)
      end
      def get(
        # ID of the card to get.
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
