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
      #   @param data [TerminalShop::Models::ViewInitResponse::Data] Initial app data.

      # @see TerminalShop::Models::ViewInitResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<TerminalShop::AddressAPI>]
        required :addresses, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::AddressAPI] }

        # @!attribute apps
        #
        #   @return [Array<TerminalShop::AppAPI>]
        required :apps, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::AppAPI] }

        # @!attribute cards
        #
        #   @return [Array<TerminalShop::CardAPI>]
        required :cards, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::CardAPI] }

        # @!attribute cart
        #   The current Terminal shop user's cart.
        #
        #   @return [TerminalShop::CartAPI]
        required :cart, -> { TerminalShop::CartAPI }

        # @!attribute orders
        #
        #   @return [Array<TerminalShop::OrderAPI>]
        required :orders, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::OrderAPI] }

        # @!attribute products
        #
        #   @return [Array<TerminalShop::ProductAPI>]
        required :products, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::ProductAPI] }

        # @!attribute profile
        #   A Terminal shop user's profile. (We have users, btw.)
        #
        #   @return [TerminalShop::ProfileAPI]
        required :profile, -> { TerminalShop::ProfileAPI }

        # @!attribute region
        #   A Terminal shop user's region.
        #
        #   @return [Symbol, TerminalShop::Region]
        required :region, enum: -> { TerminalShop::Region }

        # @!attribute subscriptions
        #
        #   @return [Array<TerminalShop::SubscriptionAPI>]
        required :subscriptions, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::SubscriptionAPI] }

        # @!attribute tokens
        #
        #   @return [Array<TerminalShop::TokenAPI>]
        required :tokens, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::TokenAPI] }

        # @!method initialize(addresses:, apps:, cards:, cart:, orders:, products:, profile:, region:, subscriptions:, tokens:)
        #   Initial app data.
        #
        #   @param addresses [Array<TerminalShop::AddressAPI>]
        #
        #   @param apps [Array<TerminalShop::AppAPI>]
        #
        #   @param cards [Array<TerminalShop::CardAPI>]
        #
        #   @param cart [TerminalShop::CartAPI] The current Terminal shop user's cart.
        #
        #   @param orders [Array<TerminalShop::OrderAPI>]
        #
        #   @param products [Array<TerminalShop::ProductAPI>]
        #
        #   @param profile [TerminalShop::ProfileAPI] A Terminal shop user's profile. (We have users, btw.)
        #
        #   @param region [Symbol, TerminalShop::Region] A Terminal shop user's region.
        #
        #   @param subscriptions [Array<TerminalShop::SubscriptionAPI>]
        #
        #   @param tokens [Array<TerminalShop::TokenAPI>]
      end
    end
  end
end
