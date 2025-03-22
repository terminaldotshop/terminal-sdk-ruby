# typed: strong

module TerminalShop
  module Models
    class CartSetItemParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # ID of the product variant to add to the cart.
      sig { returns(String) }
      attr_accessor :product_variant_id

      # Quantity of the item to add to the cart.
      sig { returns(Integer) }
      attr_accessor :quantity

      sig do
        params(
          product_variant_id: String,
          quantity: Integer,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(product_variant_id:, quantity:, request_options: {})
      end

      sig do
        override
          .returns({
                     product_variant_id: String,
                     quantity: Integer,
                     request_options: TerminalShop::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
