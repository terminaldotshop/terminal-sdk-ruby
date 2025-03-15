# frozen_string_literal: true

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::BaseModel
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

      # @!attribute [r] next_
      #   Next shipment and billing date for the subscription.
      #
      #   @return [String, nil]
      optional :next_, String, api_name: :next

      # @!parse
      #   # @return [String]
      #   attr_writer :next_

      # @!attribute [r] schedule
      #   Schedule of the subscription.
      #
      #   @return [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly, nil]
      optional :schedule, union: -> { TerminalShop::Models::SubscriptionAPI::Schedule }

      # @!parse
      #   # @return [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
      #   attr_writer :schedule

      # @!parse
      #   # Subscription to a Terminal shop product.
      #   #
      #   # @param id [String]
      #   # @param address_id [String]
      #   # @param card_id [String]
      #   # @param product_variant_id [String]
      #   # @param quantity [Integer]
      #   # @param next_ [String]
      #   # @param schedule [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
      #   #
      #   def initialize(id:, address_id:, card_id:, product_variant_id:, quantity:, next_: nil, schedule: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      # @abstract
      #
      # Schedule of the subscription.
      class Schedule < TerminalShop::Union
        variant -> { TerminalShop::Models::SubscriptionAPI::Schedule::Fixed }

        variant -> { TerminalShop::Models::SubscriptionAPI::Schedule::Weekly }

        class Fixed < TerminalShop::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, :fixed]
          required :type, const: :fixed

          # @!parse
          #   # @param type [Symbol, :fixed]
          #   #
          #   def initialize(type: :fixed, **) = super

          # def initialize: (Hash | TerminalShop::BaseModel) -> void
        end

        class Weekly < TerminalShop::BaseModel
          # @!attribute interval
          #
          #   @return [Integer]
          required :interval, Integer

          # @!attribute type
          #
          #   @return [Symbol, :weekly]
          required :type, const: :weekly

          # @!parse
          #   # @param interval [Integer]
          #   # @param type [Symbol, :weekly]
          #   #
          #   def initialize(interval:, type: :weekly, **) = super

          # def initialize: (Hash | TerminalShop::BaseModel) -> void
        end

        # @!parse
        #   class << self
        #     # @return [Array(TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly)]
        #     def variants; end
        #   end
      end
    end
  end
end
