# typed: strong

module TerminalShop
  module Resources
    class Subscription
      # Create a subscription for the current user.
      sig do
        params(
          id: String,
          address_id: String,
          card_id: String,
          created: String,
          product_variant_id: String,
          quantity: Integer,
          next_: String,
          schedule: T.any(
            TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
            TerminalShop::Internal::AnyHash,
            TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
          ),
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::SubscriptionCreateResponse)
      end
      def create(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # ID of the shipping address used for the subscription.
        address_id:,
        # ID of the card used for the subscription.
        card_id:,
        # Date the subscription was created.
        created:,
        # ID of the product variant being subscribed to.
        product_variant_id:,
        # Quantity of the subscription.
        quantity:,
        # Next shipment and billing date for the subscription.
        next_: nil,
        # Schedule of the subscription.
        schedule: nil,
        request_options: {}
      ); end
      # List the subscriptions associated with the current user.
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::SubscriptionListResponse)
      end
      def list(request_options: {}); end

      # Cancel a subscription for the current user.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::SubscriptionDeleteResponse)
      end
      def delete(
        # ID of the subscription to cancel.
        id,
        request_options: {}
      ); end
      # Get the subscription with the given ID.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::SubscriptionGetResponse)
      end
      def get(
        # ID of the subscription to get.
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
