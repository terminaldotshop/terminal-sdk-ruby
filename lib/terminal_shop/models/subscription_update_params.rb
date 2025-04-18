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

      # @!parse
      #   # @param address_id [String]
      #   # @param card_id [String]
      #   # @param schedule [TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address_id: nil, card_id: nil, schedule: nil, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void

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

          # @!parse
          #   # @param type [Symbol, :fixed]
          #   #
          #   def initialize(type: :fixed, **) = super

          # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
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

          # @!parse
          #   # @param interval [Integer]
          #   # @param type [Symbol, :weekly]
          #   #
          #   def initialize(interval:, type: :weekly, **) = super

          # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
        end

        # @!parse
        #   # @return [Array(TerminalShop::Models::SubscriptionUpdateParams::Schedule::Fixed, TerminalShop::Models::SubscriptionUpdateParams::Schedule::Weekly)]
        #   def self.variants; end
      end
    end
  end
end
