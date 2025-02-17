# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # subscription_api => {
    #   id: String,
    #   address_id: String,
    #   card_id: String,
    #   frequency: TerminalShop::Models::SubscriptionAPI::Frequency,
    #   product_variant_id: String,
    #   **_
    # }
    # ```
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

      # @!attribute frequency
      #   Frequency of the subscription.
      #
      #   @return [Symbol, TerminalShop::Models::SubscriptionAPI::Frequency]
      required :frequency, enum: -> { TerminalShop::Models::SubscriptionAPI::Frequency }

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
      #   # @param frequency [Symbol, TerminalShop::Models::SubscriptionAPI::Frequency]
      #   # @param product_variant_id [String]
      #   # @param quantity [Integer]
      #   # @param next_ [String]
      #   # @param schedule [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
      #   #
      #   def initialize(id:, address_id:, card_id:, frequency:, product_variant_id:, quantity:, next_: nil, schedule: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      # @abstract
      #
      # Frequency of the subscription.
      #
      # @example
      # ```ruby
      # case frequency
      # in :fixed
      #   # ...
      # in :daily
      #   # ...
      # in :weekly
      #   # ...
      # in :monthly
      #   # ...
      # in :yearly
      #   # ...
      # end
      # ```
      class Frequency < TerminalShop::Enum
        FIXED = :fixed
        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        YEARLY = :yearly

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # Schedule of the subscription.
      #
      # @example
      # ```ruby
      # case schedule
      # in TerminalShop::Models::SubscriptionAPI::Schedule::Fixed
      #   # ...
      # in TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
      #   # ...
      # end
      # ```
      class Schedule < TerminalShop::Union
        variant -> { TerminalShop::Models::SubscriptionAPI::Schedule::Fixed }

        variant -> { TerminalShop::Models::SubscriptionAPI::Schedule::Weekly }

        # @example
        # ```ruby
        # fixed => {
        #   type: :fixed
        # }
        # ```
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

        # @example
        # ```ruby
        # weekly => {
        #   interval: Integer,
        #   type: :weekly
        # }
        # ```
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
      end
    end
  end
end
