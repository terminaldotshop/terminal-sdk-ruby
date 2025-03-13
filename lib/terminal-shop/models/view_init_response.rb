# frozen_string_literal: true

module TerminalShop
  module Models
    class ViewInitResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Initial app data.
      #
      #   @return [TerminalShop::Models::ViewInitResponse::Data]
      required :data, -> { TerminalShop::Models::ViewInitResponse::Data }

      # @!parse
      #   # @param data [TerminalShop::Models::ViewInitResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      class Data < TerminalShop::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<TerminalShop::Models::AddressAPI>]
        required :addresses, -> { TerminalShop::ArrayOf[TerminalShop::Models::AddressAPI] }

        # @!attribute apps
        #
        #   @return [Array<TerminalShop::Models::AppAPI>]
        required :apps, -> { TerminalShop::ArrayOf[TerminalShop::Models::AppAPI] }

        # @!attribute cards
        #
        #   @return [Array<TerminalShop::Models::CardAPI>]
        required :cards, -> { TerminalShop::ArrayOf[TerminalShop::Models::CardAPI] }

        # @!attribute cart
        #   The current Terminal shop user's cart.
        #
        #   @return [TerminalShop::Models::CartAPI]
        required :cart, -> { TerminalShop::Models::CartAPI }

        # @!attribute orders
        #
        #   @return [Array<TerminalShop::Models::OrderAPI>]
        required :orders, -> { TerminalShop::ArrayOf[TerminalShop::Models::OrderAPI] }

        # @!attribute products
        #
        #   @return [Array<TerminalShop::Models::ProductAPI>]
        required :products, -> { TerminalShop::ArrayOf[TerminalShop::Models::ProductAPI] }

        # @!attribute profile
        #   A Terminal shop user's profile. (We have users, btw.)
        #
        #   @return [TerminalShop::Models::ProfileAPI]
        required :profile, -> { TerminalShop::Models::ProfileAPI }

        # @!attribute region
        #   A Terminal shop user's region.
        #
        #   @return [Symbol, TerminalShop::Models::ViewInitResponse::Data::Region]
        required :region, enum: -> { TerminalShop::Models::ViewInitResponse::Data::Region }

        # @!attribute subscriptions
        #
        #   @return [Array<TerminalShop::Models::SubscriptionAPI>]
        required :subscriptions, -> { TerminalShop::ArrayOf[TerminalShop::Models::SubscriptionAPI] }

        # @!attribute tokens
        #
        #   @return [Array<TerminalShop::Models::TokenAPI>]
        required :tokens, -> { TerminalShop::ArrayOf[TerminalShop::Models::TokenAPI] }

        # @!parse
        #   # Initial app data.
        #   #
        #   # @param addresses [Array<TerminalShop::Models::AddressAPI>]
        #   # @param apps [Array<TerminalShop::Models::AppAPI>]
        #   # @param cards [Array<TerminalShop::Models::CardAPI>]
        #   # @param cart [TerminalShop::Models::CartAPI]
        #   # @param orders [Array<TerminalShop::Models::OrderAPI>]
        #   # @param products [Array<TerminalShop::Models::ProductAPI>]
        #   # @param profile [TerminalShop::Models::ProfileAPI]
        #   # @param region [Symbol, TerminalShop::Models::ViewInitResponse::Data::Region]
        #   # @param subscriptions [Array<TerminalShop::Models::SubscriptionAPI>]
        #   # @param tokens [Array<TerminalShop::Models::TokenAPI>]
        #   #
        #   def initialize(addresses:, apps:, cards:, cart:, orders:, products:, profile:, region:, subscriptions:, tokens:, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void

        # @abstract
        #
        # A Terminal shop user's region.
        class Region < TerminalShop::Enum
          EU = :eu
          NA = :na

          finalize!
        end
      end
    end
  end
end
