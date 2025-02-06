# frozen_string_literal: true

module Terminal
  module Resources
    class Subscription
      # Create a subscription for the current user.
      #
      # @param params [Terminal::Models::SubscriptionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id Unique object identifier. The format and length of IDs may change over time.
      #
      #   @option params [String] :address_id ID of the shipping address used for the subscription.
      #
      #   @option params [String] :card_id ID of the card used for the subscription.
      #
      #   @option params [Symbol, Terminal::Models::SubscriptionAPI::Frequency] :frequency Frequency of the subscription.
      #
      #   @option params [String] :product_variant_id ID of the product variant being subscribed to.
      #
      #   @option params [Integer] :quantity Quantity of the subscription.
      #
      #   @option params [String] :next_ Next shipment and billing date for the subscription.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::SubscriptionCreateResponse]
      #
      def create(params)
        parsed, options = Terminal::Models::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscription",
          body: parsed,
          model: Terminal::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # List the subscriptions associated with the current user.
      #
      # @param params [Terminal::Models::SubscriptionListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::SubscriptionListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "subscription",
          model: Terminal::Models::SubscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Cancel a subscription for the current user.
      #
      # @param id [String] ID of the subscription to cancel.
      #
      # @param params [Terminal::Models::SubscriptionDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::SubscriptionDeleteResponse]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["subscription/%0s", id],
          model: Terminal::Models::SubscriptionDeleteResponse,
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
