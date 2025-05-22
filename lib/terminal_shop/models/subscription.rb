# frozen_string_literal: true

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute address_id
      #   ID of the shipping address used for the subscription.
      #
      #   @return [String]
      required :address_id, String, api_name: :addressID

      # @!attribute card_id
      #   ID of the card used for the subscription.
      #
      #   @return [String]
      required :card_id, String, api_name: :cardID

      # @!attribute created
      #   Date the subscription was created.
      #
      #   @return [String]
      required :created, String

      # @!attribute price
      #   Price of the subscription in cents (USD).
      #
      #   @return [Integer]
      required :price, Integer

      # @!attribute product_variant_id
      #   ID of the product variant being subscribed to.
      #
      #   @return [String]
      required :product_variant_id, String, api_name: :productVariantID

      # @!attribute quantity
      #   Quantity of the subscription.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute next_
      #   Next shipment and billing date for the subscription.
      #
      #   @return [String, nil]
      optional :next_, String, api_name: :next

      # @!attribute schedule
      #   Schedule of the subscription.
      #
      #   @return [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly, nil]
      optional :schedule, union: -> { TerminalShop::SubscriptionAPI::Schedule }

      # @!method initialize(id:, address_id:, card_id:, created:, price:, product_variant_id:, quantity:, next_: nil, schedule: nil)
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::SubscriptionAPI} for more details.
      #
      #   Subscription to a Terminal shop product.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param address_id [String] ID of the shipping address used for the subscription.
      #
      #   @param card_id [String] ID of the card used for the subscription.
      #
      #   @param created [String] Date the subscription was created.
      #
      #   @param price [Integer] Price of the subscription in cents (USD).
      #
      #   @param product_variant_id [String] ID of the product variant being subscribed to.
      #
      #   @param quantity [Integer] Quantity of the subscription.
      #
      #   @param next_ [String] Next shipment and billing date for the subscription.
      #
      #   @param schedule [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly] Schedule of the subscription.

      # Schedule of the subscription.
      #
      # @see TerminalShop::Models::SubscriptionAPI#schedule
      module Schedule
        extend TerminalShop::Internal::Type::Union

        variant -> { TerminalShop::SubscriptionAPI::Schedule::Fixed }

        variant -> { TerminalShop::SubscriptionAPI::Schedule::Weekly }

        class Fixed < TerminalShop::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :fixed]
          required :type, const: :fixed

          # @!method initialize(type: :fixed)
          #   @param type [Symbol, :fixed]
        end

        class Weekly < TerminalShop::Internal::Type::BaseModel
          # @!attribute interval
          #
          #   @return [Integer]
          required :interval, Integer

          # @!attribute type
          #
          #   @return [Symbol, :weekly]
          required :type, const: :weekly

          # @!method initialize(interval:, type: :weekly)
          #   @param interval [Integer]
          #   @param type [Symbol, :weekly]
        end

        # @!method self.variants
        #   @return [Array(TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly)]
      end
    end
  end
end
