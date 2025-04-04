# typed: strong

module TerminalShop
  module Models
    class CartAPI < TerminalShop::Internal::Type::BaseModel
      # The subtotal and shipping amounts for the current user's cart.
      sig { returns(TerminalShop::Models::CartAPI::Amount) }
      attr_reader :amount

      sig { params(amount: T.any(TerminalShop::Models::CartAPI::Amount, TerminalShop::Internal::AnyHash)).void }
      attr_writer :amount

      # An array of items in the current user's cart.
      sig { returns(T::Array[TerminalShop::Models::CartAPI::Item]) }
      attr_accessor :items

      # The subtotal of all items in the current user's cart, in cents (USD).
      sig { returns(Integer) }
      attr_accessor :subtotal

      # ID of the shipping address selected on the current user's cart.
      sig { returns(T.nilable(String)) }
      attr_reader :address_id

      sig { params(address_id: String).void }
      attr_writer :address_id

      # ID of the card selected on the current user's cart.
      sig { returns(T.nilable(String)) }
      attr_reader :card_id

      sig { params(card_id: String).void }
      attr_writer :card_id

      # Shipping information for the current user's cart.
      sig { returns(T.nilable(TerminalShop::Models::CartAPI::Shipping)) }
      attr_reader :shipping

      sig { params(shipping: T.any(TerminalShop::Models::CartAPI::Shipping, TerminalShop::Internal::AnyHash)).void }
      attr_writer :shipping

      # The current Terminal shop user's cart.
      sig do
        params(
          amount: T.any(TerminalShop::Models::CartAPI::Amount, TerminalShop::Internal::AnyHash),
          items: T::Array[T.any(TerminalShop::Models::CartAPI::Item, TerminalShop::Internal::AnyHash)],
          subtotal: Integer,
          address_id: String,
          card_id: String,
          shipping: T.any(TerminalShop::Models::CartAPI::Shipping, TerminalShop::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(amount:, items:, subtotal:, address_id: nil, card_id: nil, shipping: nil)
      end

      sig do
        override
          .returns(
            {
              amount: TerminalShop::Models::CartAPI::Amount,
              items: T::Array[TerminalShop::Models::CartAPI::Item],
              subtotal: Integer,
              address_id: String,
              card_id: String,
              shipping: TerminalShop::Models::CartAPI::Shipping
            }
          )
      end
      def to_hash
      end

      class Amount < TerminalShop::Internal::Type::BaseModel
        # Subtotal of the current user's cart, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :subtotal

        # Shipping amount of the current user's cart, in cents (USD).
        sig { returns(T.nilable(Integer)) }
        attr_reader :shipping

        sig { params(shipping: Integer).void }
        attr_writer :shipping

        # Total amount after any discounts, in cents (USD).
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        # The subtotal and shipping amounts for the current user's cart.
        sig { params(subtotal: Integer, shipping: Integer, total: Integer).returns(T.attached_class) }
        def self.new(subtotal:, shipping: nil, total: nil)
        end

        sig { override.returns({subtotal: Integer, shipping: Integer, total: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::Internal::Type::BaseModel
        # Unique object identifier. The format and length of IDs may change over time.
        sig { returns(String) }
        attr_accessor :id

        # ID of the product variant for this item in the current user's cart.
        sig { returns(String) }
        attr_accessor :product_variant_id

        # Quantity of the item in the current user's cart.
        sig { returns(Integer) }
        attr_accessor :quantity

        # Subtotal of the item in the current user's cart, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :subtotal

        # An item in the current Terminal shop user's cart.
        sig do
          params(id: String, product_variant_id: String, quantity: Integer, subtotal: Integer)
            .returns(T.attached_class)
        end
        def self.new(id:, product_variant_id:, quantity:, subtotal:)
        end

        sig do
          override.returns({id: String, product_variant_id: String, quantity: Integer, subtotal: Integer})
        end
        def to_hash
        end
      end

      class Shipping < TerminalShop::Internal::Type::BaseModel
        # Shipping service name.
        sig { returns(T.nilable(String)) }
        attr_reader :service

        sig { params(service: String).void }
        attr_writer :service

        # Shipping timeframe provided by the shipping carrier.
        sig { returns(T.nilable(String)) }
        attr_reader :timeframe

        sig { params(timeframe: String).void }
        attr_writer :timeframe

        # Shipping information for the current user's cart.
        sig { params(service: String, timeframe: String).returns(T.attached_class) }
        def self.new(service: nil, timeframe: nil)
        end

        sig { override.returns({service: String, timeframe: String}) }
        def to_hash
        end
      end
    end
  end
end
