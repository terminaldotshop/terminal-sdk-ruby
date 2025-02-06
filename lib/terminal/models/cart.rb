# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # cart_api => {
    #   amount: Terminal::Models::CartAPI::Amount,
    #   items: -> { Terminal::ArrayOf[Terminal::Models::CartAPI::Item] === _1 },
    #   subtotal: Integer,
    #   address_id: String,
    #   card_id: String
    # }
    # ```
    class CartAPI < Terminal::BaseModel
      # @!attribute amount
      #   The subtotal and shipping amounts for the current user's cart.
      #
      #   @return [Terminal::Models::CartAPI::Amount]
      required :amount, -> { Terminal::Models::CartAPI::Amount }

      # @!attribute items
      #   An array of items in the current user's cart.
      #
      #   @return [Array<Terminal::Models::CartAPI::Item>]
      required :items, -> { Terminal::ArrayOf[Terminal::Models::CartAPI::Item] }

      # @!attribute subtotal
      #   The subtotal of all items in the current user's cart, in cents (USD).
      #
      #   @return [Integer]
      required :subtotal, Integer

      # @!attribute [r] address_id
      #   ID of the shipping address selected on the current user's cart.
      #
      #   @return [String, nil]
      optional :address_id, String, api_name: :addressID

      # @!parse
      #   # @return [String]
      #   attr_writer :address_id

      # @!attribute [r] card_id
      #   ID of the card selected on the current user's cart.
      #
      #   @return [String, nil]
      optional :card_id, String, api_name: :cardID

      # @!parse
      #   # @return [String]
      #   attr_writer :card_id

      # @!attribute [r] shipping
      #   Shipping information for the current user's cart.
      #
      #   @return [Terminal::Models::CartAPI::Shipping, nil]
      optional :shipping, -> { Terminal::Models::CartAPI::Shipping }

      # @!parse
      #   # @return [Terminal::Models::CartAPI::Shipping]
      #   attr_writer :shipping

      # @!parse
      #   # The current Terminal shop user's cart.
      #   #
      #   # @param amount [Terminal::Models::CartAPI::Amount]
      #   # @param items [Array<Terminal::Models::CartAPI::Item>]
      #   # @param subtotal [Integer]
      #   # @param address_id [String]
      #   # @param card_id [String]
      #   # @param shipping [Terminal::Models::CartAPI::Shipping]
      #   #
      #   def initialize(amount:, items:, subtotal:, address_id: nil, card_id: nil, shipping: nil, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # amount => {
      #   subtotal: Integer,
      #   shipping: Integer
      # }
      # ```
      class Amount < Terminal::BaseModel
        # @!attribute subtotal
        #   Subtotal of the current user's cart, in cents (USD).
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!attribute [r] shipping
        #   Shipping amount of the current user's cart, in cents (USD).
        #
        #   @return [Integer, nil]
        optional :shipping, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :shipping

        # @!parse
        #   # The subtotal and shipping amounts for the current user's cart.
        #   #
        #   # @param subtotal [Integer]
        #   # @param shipping [Integer]
        #   #
        #   def initialize(subtotal:, shipping: nil, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end

      # @example
      # ```ruby
      # item => {
      #   id: String,
      #   product_variant_id: String,
      #   quantity: Integer,
      #   subtotal: Integer
      # }
      # ```
      class Item < Terminal::BaseModel
        # @!attribute id
        #   Unique object identifier. The format and length of IDs may change over time.
        #
        #   @return [String]
        required :id, String

        # @!attribute product_variant_id
        #   ID of the product variant for this item in the current user's cart.
        #
        #   @return [String]
        required :product_variant_id, String, api_name: :productVariantID

        # @!attribute quantity
        #   Quantity of the item in the current user's cart.
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute subtotal
        #   Subtotal of the item in the current user's cart, in cents (USD).
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!parse
        #   # An item in the current Terminal shop user's cart.
        #   #
        #   # @param id [String]
        #   # @param product_variant_id [String]
        #   # @param quantity [Integer]
        #   # @param subtotal [Integer]
        #   #
        #   def initialize(id:, product_variant_id:, quantity:, subtotal:, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end

      # @example
      # ```ruby
      # shipping => {
      #   service: String,
      #   timeframe: String
      # }
      # ```
      class Shipping < Terminal::BaseModel
        # @!attribute [r] service
        #   Shipping service name.
        #
        #   @return [String, nil]
        optional :service, String

        # @!parse
        #   # @return [String]
        #   attr_writer :service

        # @!attribute [r] timeframe
        #   Shipping timeframe provided by the shipping carrier.
        #
        #   @return [String, nil]
        optional :timeframe, String

        # @!parse
        #   # @return [String]
        #   attr_writer :timeframe

        # @!parse
        #   # Shipping information for the current user's cart.
        #   #
        #   # @param service [String]
        #   # @param timeframe [String]
        #   #
        #   def initialize(service: nil, timeframe: nil, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
