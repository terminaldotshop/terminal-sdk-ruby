# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # view_init_response => {
    #   data: Terminal::Models::ViewInitResponse::Data
    # }
    # ```
    class ViewInitResponse < Terminal::BaseModel
      # @!attribute data
      #   Initial app data.
      #
      #   @return [Terminal::Models::ViewInitResponse::Data]
      required :data, -> { Terminal::Models::ViewInitResponse::Data }

      # @!parse
      #   # @param data [Terminal::Models::ViewInitResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   addresses: -> { Terminal::ArrayOf[Terminal::Models::AddressAPI] === _1 },
      #   apps: -> { Terminal::ArrayOf[Terminal::Models::AppAPI] === _1 },
      #   cards: -> { Terminal::ArrayOf[Terminal::Models::CardAPI] === _1 },
      #   cart: Terminal::Models::CartAPI,
      #   orders: -> { Terminal::ArrayOf[Terminal::Models::OrderAPI] === _1 },
      #   **_
      # }
      # ```
      class Data < Terminal::BaseModel
        # @!attribute addresses
        #
        #   @return [Array<Terminal::Models::AddressAPI>]
        required :addresses, -> { Terminal::ArrayOf[Terminal::Models::AddressAPI] }

        # @!attribute apps
        #
        #   @return [Array<Terminal::Models::AppAPI>]
        required :apps, -> { Terminal::ArrayOf[Terminal::Models::AppAPI] }

        # @!attribute cards
        #
        #   @return [Array<Terminal::Models::CardAPI>]
        required :cards, -> { Terminal::ArrayOf[Terminal::Models::CardAPI] }

        # @!attribute cart
        #   The current Terminal shop user's cart.
        #
        #   @return [Terminal::Models::CartAPI]
        required :cart, -> { Terminal::Models::CartAPI }

        # @!attribute orders
        #
        #   @return [Array<Terminal::Models::OrderAPI>]
        required :orders, -> { Terminal::ArrayOf[Terminal::Models::OrderAPI] }

        # @!attribute products
        #
        #   @return [Array<Terminal::Models::ProductAPI>]
        required :products, -> { Terminal::ArrayOf[Terminal::Models::ProductAPI] }

        # @!attribute profile
        #   A Terminal shop user's profile. (We have users, btw.)
        #
        #   @return [Terminal::Models::ProfileAPI]
        required :profile, -> { Terminal::Models::ProfileAPI }

        # @!attribute subscriptions
        #
        #   @return [Array<Terminal::Models::SubscriptionAPI>]
        required :subscriptions, -> { Terminal::ArrayOf[Terminal::Models::SubscriptionAPI] }

        # @!attribute tokens
        #
        #   @return [Array<Terminal::Models::TokenAPI>]
        required :tokens, -> { Terminal::ArrayOf[Terminal::Models::TokenAPI] }

        # @!parse
        #   # Initial app data.
        #   #
        #   # @param addresses [Array<Terminal::Models::AddressAPI>]
        #   # @param apps [Array<Terminal::Models::AppAPI>]
        #   # @param cards [Array<Terminal::Models::CardAPI>]
        #   # @param cart [Terminal::Models::CartAPI]
        #   # @param orders [Array<Terminal::Models::OrderAPI>]
        #   # @param products [Array<Terminal::Models::ProductAPI>]
        #   # @param profile [Terminal::Models::ProfileAPI]
        #   # @param subscriptions [Array<Terminal::Models::SubscriptionAPI>]
        #   # @param tokens [Array<Terminal::Models::TokenAPI>]
        #   #
        #   def initialize(addresses:, apps:, cards:, cart:, orders:, products:, profile:, subscriptions:, tokens:, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
