# typed: strong

module TerminalShop
  module Models
    class CartAPI < TerminalShop::BaseModel
      # The subtotal and shipping amounts for the current user's cart.
      sig { returns(TerminalShop::Models::CartAPI::Amount) }
      def amount
      end

      sig do
        params(_: T.any(TerminalShop::Models::CartAPI::Amount, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::CartAPI::Amount, TerminalShop::Util::AnyHash))
      end
      def amount=(_)
      end

      # An array of items in the current user's cart.
      sig { returns(T::Array[TerminalShop::Models::CartAPI::Item]) }
      def items
      end

      sig do
        params(_: T::Array[TerminalShop::Models::CartAPI::Item])
          .returns(T::Array[TerminalShop::Models::CartAPI::Item])
      end
      def items=(_)
      end

      # The subtotal of all items in the current user's cart, in cents (USD).
      sig { returns(Integer) }
      def subtotal
      end

      sig { params(_: Integer).returns(Integer) }
      def subtotal=(_)
      end

      # ID of the shipping address selected on the current user's cart.
      sig { returns(T.nilable(String)) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      # ID of the card selected on the current user's cart.
      sig { returns(T.nilable(String)) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # Shipping information for the current user's cart.
      sig { returns(T.nilable(TerminalShop::Models::CartAPI::Shipping)) }
      def shipping
      end

      sig do
        params(_: T.any(TerminalShop::Models::CartAPI::Shipping, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::CartAPI::Shipping, TerminalShop::Util::AnyHash))
      end
      def shipping=(_)
      end

      # The current Terminal shop user's cart.
      sig do
        params(
          amount: T.any(TerminalShop::Models::CartAPI::Amount, TerminalShop::Util::AnyHash),
          items: T::Array[T.any(TerminalShop::Models::CartAPI::Item, TerminalShop::Util::AnyHash)],
          subtotal: Integer,
          address_id: String,
          card_id: String,
          shipping: T.any(TerminalShop::Models::CartAPI::Shipping, TerminalShop::Util::AnyHash)
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

      class Amount < TerminalShop::BaseModel
        # Subtotal of the current user's cart, in cents (USD).
        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

        # Shipping amount of the current user's cart, in cents (USD).
        sig { returns(T.nilable(Integer)) }
        def shipping
        end

        sig { params(_: Integer).returns(Integer) }
        def shipping=(_)
        end

        # Total amount after any discounts, in cents (USD).
        sig { returns(T.nilable(Integer)) }
        def total
        end

        sig { params(_: Integer).returns(Integer) }
        def total=(_)
        end

        # The subtotal and shipping amounts for the current user's cart.
        sig { params(subtotal: Integer, shipping: Integer, total: Integer).returns(T.attached_class) }
        def self.new(subtotal:, shipping: nil, total: nil)
        end

        sig { override.returns({subtotal: Integer, shipping: Integer, total: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::BaseModel
        # Unique object identifier. The format and length of IDs may change over time.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # ID of the product variant for this item in the current user's cart.
        sig { returns(String) }
        def product_variant_id
        end

        sig { params(_: String).returns(String) }
        def product_variant_id=(_)
        end

        # Quantity of the item in the current user's cart.
        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # Subtotal of the item in the current user's cart, in cents (USD).
        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

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

      class Shipping < TerminalShop::BaseModel
        # Shipping service name.
        sig { returns(T.nilable(String)) }
        def service
        end

        sig { params(_: String).returns(String) }
        def service=(_)
        end

        # Shipping timeframe provided by the shipping carrier.
        sig { returns(T.nilable(String)) }
        def timeframe
        end

        sig { params(_: String).returns(String) }
        def timeframe=(_)
        end

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
