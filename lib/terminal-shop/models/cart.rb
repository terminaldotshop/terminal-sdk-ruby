# frozen_string_literal: true

module TerminalShop
  module Models
    class CartAPI < TerminalShop::BaseModel
      # @!attribute amount
      #   The subtotal and shipping amounts for the current user's cart.
      #
      #   @return [TerminalShop::Models::CartAPI::Amount]
      required :amount, -> { TerminalShop::Models::CartAPI::Amount }

      # @!attribute items
      #   An array of items in the current user's cart.
      #
      #   @return [Array<TerminalShop::Models::CartAPI::Item>]
      required :items, -> { TerminalShop::ArrayOf[TerminalShop::Models::CartAPI::Item] }

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
      #   @return [TerminalShop::Models::CartAPI::Shipping, nil]
      optional :shipping, -> { TerminalShop::Models::CartAPI::Shipping }

      # @!parse
      #   # @return [TerminalShop::Models::CartAPI::Shipping]
      #   attr_writer :shipping

      # @!parse
      #   # The current Terminal shop user's cart.
      #   #
      #   # @param amount [TerminalShop::Models::CartAPI::Amount]
      #   # @param items [Array<TerminalShop::Models::CartAPI::Item>]
      #   # @param subtotal [Integer]
      #   # @param address_id [String]
      #   # @param card_id [String]
      #   # @param shipping [TerminalShop::Models::CartAPI::Shipping]
      #   #
      #   def initialize(amount:, items:, subtotal:, address_id: nil, card_id: nil, shipping: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      class Amount < TerminalShop::BaseModel
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

        # @!attribute [r] total
        #   Total amount after any discounts, in cents (USD).
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :total

        # @!parse
        #   # The subtotal and shipping amounts for the current user's cart.
        #   #
        #   # @param subtotal [Integer]
        #   # @param shipping [Integer]
        #   # @param total [Integer]
        #   #
        #   def initialize(subtotal:, shipping: nil, total: nil, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end

      class Item < TerminalShop::BaseModel
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

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end

      class Shipping < TerminalShop::BaseModel
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

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
