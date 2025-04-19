# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#update
    class SubscriptionUpdateParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute [r] address_id
      #   New shipping address ID for the subscription.
      #
      #   @return [String, nil]
      optional :address_id, String, api_name: :addressID

      # @!parse
      #   # @return [String]
      #   attr_writer :address_id

      # @!attribute [r] card_id
      #   New payment method ID for the subscription.
      #
      #   @return [String, nil]
      optional :card_id, String, api_name: :cardID

      # @!parse
      #   # @return [String]
      #   attr_writer :card_id

      # @!attribute [r] schedule
      #   New schedule for the subscription.
      #
      #   @return [TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly, nil]
      optional :schedule, union: -> { TerminalShop::Models::SubscriptionUpdateParams::Schedule }

      # @!parse
      #   # @return [TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly]
      #   attr_writer :schedule

      # @!method initialize(address_id: nil, card_id: nil, schedule: nil, request_options: {})
      #   @param address_id [String]
      #   @param card_id [String]
      #   @param schedule [TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]

      # New schedule for the subscription.
      module Schedule
        extend TerminalShop::Internal::Type::Union

        variant -> { TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed }

        variant -> { TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly }

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
        #   @return [Array(TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly)]
      end
    end
  end
end
