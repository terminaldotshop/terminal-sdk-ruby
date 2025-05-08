# frozen_string_literal: true

module TerminalShop
  module Resources
    class Subscription
      # Some parameter documentations has been truncated, see
      # {TerminalShop::Models::SubscriptionCreateParams} for more details.
      #
      # Create a subscription for the current user.
      #
      # @overload create(id:, address_id:, card_id:, created:, price:, product_variant_id:, quantity:, next_: nil, schedule: nil, request_options: {})
      #
      # @param id [String] Unique object identifier.
      #
      # @param address_id [String] ID of the shipping address used for the subscription.
      #
      # @param card_id [String] ID of the card used for the subscription.
      #
      # @param created [String] Date the subscription was created.
      #
      # @param price [Integer] Price of the subscription in cents (USD).
      #
      # @param product_variant_id [String] ID of the product variant being subscribed to.
      #
      # @param quantity [Integer] Quantity of the subscription.
      #
      # @param next_ [String] Next shipment and billing date for the subscription.
      #
      # @param schedule [TerminalShop::SubscriptionAPI::Schedule::Fixed, TerminalShop::SubscriptionAPI::Schedule::Weekly] Schedule of the subscription.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionCreateResponse]
      #
      # @see TerminalShop::Models::SubscriptionCreateParams
      def create(params)
        parsed, options = TerminalShop::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscription",
          body: parsed,
          model: TerminalShop::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # Update card, address, or interval for an existing subscription.
      #
      # @overload update(id, address_id: nil, card_id: nil, schedule: nil, request_options: {})
      #
      # @param id [String] ID of the subscription to update.
      #
      # @param address_id [String] New shipping address ID for the subscription.
      #
      # @param card_id [String] New payment method ID for the subscription.
      #
      # @param schedule [TerminalShop::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::SubscriptionUpdateParams::Schedule::Weekly] New schedule for the subscription.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionUpdateResponse]
      #
      # @see TerminalShop::Models::SubscriptionUpdateParams
      def update(id, params = {})
        parsed, options = TerminalShop::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["subscription/%1$s", id],
          body: parsed,
          model: TerminalShop::Models::SubscriptionUpdateResponse,
          options: options
        )
      end

      # List the subscriptions associated with the current user.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionListResponse]
      #
      # @see TerminalShop::Models::SubscriptionListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "subscription",
          model: TerminalShop::Models::SubscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Cancel a subscription for the current user.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the subscription to cancel.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionDeleteResponse]
      #
      # @see TerminalShop::Models::SubscriptionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["subscription/%1$s", id],
          model: TerminalShop::Models::SubscriptionDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the subscription with the given ID.
      #
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the subscription to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionGetResponse]
      #
      # @see TerminalShop::Models::SubscriptionGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["subscription/%1$s", id],
          model: TerminalShop::Models::SubscriptionGetResponse,
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
