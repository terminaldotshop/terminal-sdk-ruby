# frozen_string_literal: true

module TerminalShop
  module Models
    class CartAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute amount
      #   The subtotal and shipping amounts for the current user's cart.
      #
      #   @return [TerminalShop::CartAPI::Amount]
      required :amount, -> { TerminalShop::CartAPI::Amount }

      # @!attribute items
      #   An array of items in the current user's cart.
      #
      #   @return [Array<TerminalShop::CartAPI::Item>]
      required :items, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::CartAPI::Item] }

      # @!attribute subtotal
      #   The subtotal of all items in the current user's cart, in cents (USD).
      #
      #   @return [Integer]
      required :subtotal, Integer

      # @!attribute address_id
      #   ID of the shipping address selected on the current user's cart.
      #
      #   @return [String, nil]
      optional :address_id, String, api_name: :addressID

      # @!attribute card_id
      #   ID of the card selected on the current user's cart.
      #
      #   @return [String, nil]
      optional :card_id, String, api_name: :cardID

      # @!attribute shipping
      #   Shipping information for the current user's cart.
      #
      #   @return [TerminalShop::CartAPI::Shipping, nil]
      optional :shipping, -> { TerminalShop::CartAPI::Shipping }

      # @!method initialize(amount:, items:, subtotal:, address_id: nil, card_id: nil, shipping: nil)
      #   The current Terminal shop user's cart.
      #
      #   @param amount [TerminalShop::CartAPI::Amount] The subtotal and shipping amounts for the current user's cart.
      #
      #   @param items [Array<TerminalShop::CartAPI::Item>] An array of items in the current user's cart.
      #
      #   @param subtotal [Integer] The subtotal of all items in the current user's cart, in cents (USD).
      #
      #   @param address_id [String] ID of the shipping address selected on the current user's cart.
      #
      #   @param card_id [String] ID of the card selected on the current user's cart.
      #
      #   @param shipping [TerminalShop::CartAPI::Shipping] Shipping information for the current user's cart.

      # @see TerminalShop::CartAPI#amount
      class Amount < TerminalShop::Internal::Type::BaseModel
        # @!attribute subtotal
        #   Subtotal of the current user's cart, in cents (USD).
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!attribute shipping
        #   Shipping amount of the current user's cart, in cents (USD).
        #
        #   @return [Integer, nil]
        optional :shipping, Integer

        # @!attribute total
        #   Total amount after any discounts, in cents (USD).
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(subtotal:, shipping: nil, total: nil)
        #   The subtotal and shipping amounts for the current user's cart.
        #
        #   @param subtotal [Integer] Subtotal of the current user's cart, in cents (USD).
        #
        #   @param shipping [Integer] Shipping amount of the current user's cart, in cents (USD).
        #
        #   @param total [Integer] Total amount after any discounts, in cents (USD).
      end

      class Item < TerminalShop::Internal::Type::BaseModel
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

        # @!method initialize(id:, product_variant_id:, quantity:, subtotal:)
        #   Some parameter documentations has been truncated, see
        #   {TerminalShop::CartAPI::Item} for more details.
        #
        #   An item in the current Terminal shop user's cart.
        #
        #   @param id [String] Unique object identifier.
        #
        #   @param product_variant_id [String] ID of the product variant for this item in the current user's cart.
        #
        #   @param quantity [Integer] Quantity of the item in the current user's cart.
        #
        #   @param subtotal [Integer] Subtotal of the item in the current user's cart, in cents (USD).
      end

      # @see TerminalShop::CartAPI#shipping
      class Shipping < TerminalShop::Internal::Type::BaseModel
        # @!attribute service
        #   Shipping service name.
        #
        #   @return [String, nil]
        optional :service, String

        # @!attribute timeframe
        #   Shipping timeframe provided by the shipping carrier.
        #
        #   @return [String, nil]
        optional :timeframe, String

        # @!method initialize(service: nil, timeframe: nil)
        #   Shipping information for the current user's cart.
        #
        #   @param service [String] Shipping service name.
        #
        #   @param timeframe [String] Shipping timeframe provided by the shipping carrier.
      end
    end
  end
end
