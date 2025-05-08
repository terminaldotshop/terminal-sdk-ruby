# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#update
    class SubscriptionUpdateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute address_id
      #   New shipping address ID for the subscription.
      #
      #   @return [String, nil]
      optional :address_id, String, api_name: :addressID

      # @!attribute card_id
      #   New payment method ID for the subscription.
      #
      #   @return [String, nil]
      optional :card_id, String, api_name: :cardID

      # @!attribute schedule
      #   New schedule for the subscription.
      #
      #   @return [TerminalShop::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::SubscriptionUpdateParams::Schedule::Weekly, nil]
      optional :schedule, union: -> { TerminalShop::SubscriptionUpdateParams::Schedule }

      # @!method initialize(address_id: nil, card_id: nil, schedule: nil, request_options: {})
      #   @param address_id [String] New shipping address ID for the subscription.
      #
      #   @param card_id [String] New payment method ID for the subscription.
      #
      #   @param schedule [TerminalShop::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::SubscriptionUpdateParams::Schedule::Weekly] New schedule for the subscription.
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]

      # New schedule for the subscription.
      module Schedule
        extend TerminalShop::Internal::Type::Union

        variant -> { TerminalShop::SubscriptionUpdateParams::Schedule::Fixed }

        variant -> { TerminalShop::SubscriptionUpdateParams::Schedule::Weekly }

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
        #   @return [Array(TerminalShop::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::SubscriptionUpdateParams::Schedule::Weekly)]
      end
    end
  end
end
