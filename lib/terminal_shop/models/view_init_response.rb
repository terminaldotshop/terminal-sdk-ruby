# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::View#init
    class ViewInitResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Initial app data.
      #
      #   @return [TerminalShop::Models::ViewInitResponse::Data]
      required :data, -> { TerminalShop::Models::ViewInitResponse::Data }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::ViewInitResponse::Data]

      # @see TerminalShop::Models::ViewInitResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<TerminalShop::Models::AddressAPI>]
        required :addresses, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::AddressAPI] }

        # @!attribute apps
        #
        #   @return [Array<TerminalShop::Models::AppAPI>]
        required :apps, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::AppAPI] }

        # @!attribute cards
        #
        #   @return [Array<TerminalShop::Models::CardAPI>]
        required :cards, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::CardAPI] }

        # @!attribute cart
        #   The current Terminal shop user's cart.
        #
        #   @return [TerminalShop::Models::CartAPI]
        required :cart, -> { TerminalShop::Models::CartAPI }

        # @!attribute orders
        #
        #   @return [Array<TerminalShop::Models::OrderAPI>]
        required :orders, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::OrderAPI] }

        # @!attribute products
        #
        #   @return [Array<TerminalShop::Models::ProductAPI>]
        required :products, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::ProductAPI] }

        # @!attribute profile
        #   A Terminal shop user's profile. (We have users, btw.)
        #
        #   @return [TerminalShop::Models::ProfileAPI]
        required :profile, -> { TerminalShop::Models::ProfileAPI }

        # @!attribute region
        #   A Terminal shop user's region.
        #
        #   @return [Symbol, TerminalShop::Models::Region]
        required :region, enum: -> { TerminalShop::Models::Region }

        # @!attribute subscriptions
        #
        #   @return [Array<TerminalShop::Models::SubscriptionAPI>]
        required :subscriptions,
                 -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::SubscriptionAPI] }

        # @!attribute tokens
        #
        #   @return [Array<TerminalShop::Models::TokenAPI>]
        required :tokens, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::TokenAPI] }

        # @!method initialize(addresses:, apps:, cards:, cart:, orders:, products:, profile:, region:, subscriptions:, tokens:)
        #   Initial app data.
        #
        #   @param addresses [Array<TerminalShop::Models::AddressAPI>]
        #   @param apps [Array<TerminalShop::Models::AppAPI>]
        #   @param cards [Array<TerminalShop::Models::CardAPI>]
        #   @param cart [TerminalShop::Models::CartAPI]
        #   @param orders [Array<TerminalShop::Models::OrderAPI>]
        #   @param products [Array<TerminalShop::Models::ProductAPI>]
        #   @param profile [TerminalShop::Models::ProfileAPI]
        #   @param region [Symbol, TerminalShop::Models::Region]
        #   @param subscriptions [Array<TerminalShop::Models::SubscriptionAPI>]
        #   @param tokens [Array<TerminalShop::Models::TokenAPI>]
      end
    end
  end
end
