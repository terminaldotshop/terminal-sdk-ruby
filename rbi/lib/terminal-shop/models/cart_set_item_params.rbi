# typed: strong

module TerminalShop
  module Models
    class CartSetItemParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def product_variant_id
      end

      sig { params(_: String).returns(String) }
      def product_variant_id=(_)
      end

      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      sig do
        params(
          product_variant_id: String,
          quantity: Integer,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(product_variant_id:, quantity:, request_options: {})
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
