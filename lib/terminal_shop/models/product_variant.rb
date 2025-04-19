# frozen_string_literal: true

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   Name of the product variant.
      #
      #   @return [String]
      required :name, String

      # @!attribute price
      #   Price of the product variant in cents (USD).
      #
      #   @return [Integer]
      required :price, Integer

      # @!method initialize(id:, name:, price:)
      #   Variant of a product in the Terminal shop.
      #
      #   @param id [String]
      #   @param name [String]
      #   @param price [Integer]
    end
  end
end
