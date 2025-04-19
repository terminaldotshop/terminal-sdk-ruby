# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#set_item
    class CartSetItemParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

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

      # @!method initialize(product_variant_id:, quantity:, request_options: {})
      #   @param product_variant_id [String]
      #   @param quantity [Integer]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
