# frozen_string_literal: true

module TerminalShop
  module Models
    class CartSetItemParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

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
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(product_variant_id:, quantity:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
