# typed: strong

module TerminalShop
  module Models
    class CartAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # The subtotal and shipping amounts for the current user's cart.
      sig { returns(TerminalShop::CartAPI::Amount) }
      attr_reader :amount

      sig { params(amount: TerminalShop::CartAPI::Amount::OrHash).void }
      attr_writer :amount

      # An array of items in the current user's cart.
      sig { returns(T::Array[TerminalShop::CartAPI::Item]) }
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
      sig { returns(T.nilable(TerminalShop::CartAPI::Shipping)) }
      attr_reader :shipping

      sig { params(shipping: TerminalShop::CartAPI::Shipping::OrHash).void }
      attr_writer :shipping

      # The current Terminal shop user's cart.
      sig do
        params(
          amount: TerminalShop::CartAPI::Amount::OrHash,
          items: T::Array[TerminalShop::CartAPI::Item::OrHash],
          subtotal: Integer,
          address_id: String,
          card_id: String,
          shipping: TerminalShop::CartAPI::Shipping::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The subtotal and shipping amounts for the current user's cart.
        amount:,
        # An array of items in the current user's cart.
        items:,
        # The subtotal of all items in the current user's cart, in cents (USD).
        subtotal:,
        # ID of the shipping address selected on the current user's cart.
        address_id: nil,
        # ID of the card selected on the current user's cart.
        card_id: nil,
        # Shipping information for the current user's cart.
        shipping: nil
      )
      end

      sig do
        override.returns(
          {
            amount: TerminalShop::CartAPI::Amount,
            items: T::Array[TerminalShop::CartAPI::Item],
            subtotal: Integer,
            address_id: String,
            card_id: String,
            shipping: TerminalShop::CartAPI::Shipping
          }
        )
      end
      def to_hash
      end

      class Amount < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
        sig do
          params(subtotal: Integer, shipping: Integer, total: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # Subtotal of the current user's cart, in cents (USD).
          subtotal:,
          # Shipping amount of the current user's cart, in cents (USD).
          shipping: nil,
          # Total amount after any discounts, in cents (USD).
          total: nil
        )
        end

        sig do
          override.returns(
            { subtotal: Integer, shipping: Integer, total: Integer }
          )
        end
        def to_hash
        end
      end

      class Item < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
          params(
            id: String,
            product_variant_id: String,
            quantity: Integer,
            subtotal: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique object identifier. The format and length of IDs may change over time.
          id:,
          # ID of the product variant for this item in the current user's cart.
          product_variant_id:,
          # Quantity of the item in the current user's cart.
          quantity:,
          # Subtotal of the item in the current user's cart, in cents (USD).
          subtotal:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              product_variant_id: String,
              quantity: Integer,
              subtotal: Integer
            }
          )
        end
        def to_hash
        end
      end

      class Shipping < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
        sig do
          params(service: String, timeframe: String).returns(T.attached_class)
        end
        def self.new(
          # Shipping service name.
          service: nil,
          # Shipping timeframe provided by the shipping carrier.
          timeframe: nil
        )
        end

        sig { override.returns({ service: String, timeframe: String }) }
        def to_hash
        end
      end
    end
  end
end
