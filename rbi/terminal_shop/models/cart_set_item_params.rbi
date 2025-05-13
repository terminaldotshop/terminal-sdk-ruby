# typed: strong

module TerminalShop
  module Models
    class CartSetItemParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::CartSetItemParams,
            TerminalShop::Internal::AnyHash
          )
        end

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
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the product variant to add to the cart.
        product_variant_id:,
        # Quantity of the item to add to the cart.
        quantity:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_variant_id: String,
            quantity: Integer,
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
