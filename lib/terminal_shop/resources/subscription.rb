# frozen_string_literal: true

module TerminalShop
  module Resources
    class Subscription
      # Create a subscription for the current user.
      #
      # @overload create(id:, address_id:, card_id:, product_variant_id:, quantity:, next_: nil, schedule: nil, request_options: {})
      #
      # @param id [String]
      # @param address_id [String]
      # @param card_id [String]
      # @param product_variant_id [String]
      # @param quantity [Integer]
      # @param next_ [String]
      # @param schedule [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::SubscriptionCreateResponse]
      #
      # @see TerminalShop::Models::SubscriptionCreateParams
      def create(params)
        parsed, options = TerminalShop::Models::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscription",
          body: parsed,
          model: TerminalShop::Models::SubscriptionCreateResponse,
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
      # @param id [String]
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
      # @param id [String]
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
