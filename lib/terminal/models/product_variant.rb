# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # product_variant => {
    #   id: String,
    #   name: String,
    #   price: Integer
    # }
    # ```
    class ProductVariant < Terminal::BaseModel
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

      # @!parse
      #   # Variant of a product in the Terminal shop.
      #   #
      #   # @param id [String]
      #   # @param name [String]
      #   # @param price [Integer]
      #   #
      #   def initialize(id:, name:, price:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
