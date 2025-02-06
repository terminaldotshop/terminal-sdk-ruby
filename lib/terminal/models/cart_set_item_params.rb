# frozen_string_literal: true

module Terminal
  module Models
    class CartSetItemParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute product_variant_id
      #   ID of the product variant to add to the cart.
      #
      #   @return [String]
      required :product_variant_id, String, api_name: :productVariantID

      # @!attribute quantity
      #   Quantity of the item to add to the cart.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!parse
      #   # @param product_variant_id [String]
      #   # @param quantity [Integer]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(product_variant_id:, quantity:, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
