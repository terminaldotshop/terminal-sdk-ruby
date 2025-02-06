# typed: strong

module TerminalShop
  module Models
    class CartSetItemParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      attr_accessor :product_variant_id

      sig { returns(Integer) }
      attr_accessor :quantity

      sig do
        params(
          product_variant_id: String,
          quantity: Integer,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(product_variant_id:, quantity:, request_options: {})
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
