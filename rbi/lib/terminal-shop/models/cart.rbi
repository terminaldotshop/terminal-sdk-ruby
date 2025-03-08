# typed: strong

module TerminalShop
  module Models
    class CartAPI < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CartAPI::Amount) }
      def amount
      end

      sig { params(_: TerminalShop::Models::CartAPI::Amount).returns(TerminalShop::Models::CartAPI::Amount) }
      def amount=(_)
      end

      sig { returns(T::Array[TerminalShop::Models::CartAPI::Item]) }
      def items
      end

      sig do
        params(_: T::Array[TerminalShop::Models::CartAPI::Item])
          .returns(T::Array[TerminalShop::Models::CartAPI::Item])
      end
      def items=(_)
      end

      sig { returns(Integer) }
      def subtotal
      end

      sig { params(_: Integer).returns(Integer) }
      def subtotal=(_)
      end

      sig { returns(T.nilable(String)) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(T.nilable(TerminalShop::Models::CartAPI::Shipping)) }
      def shipping
      end

      sig { params(_: TerminalShop::Models::CartAPI::Shipping).returns(TerminalShop::Models::CartAPI::Shipping) }
      def shipping=(_)
      end

      sig do
        params(
          amount: TerminalShop::Models::CartAPI::Amount,
          items: T::Array[TerminalShop::Models::CartAPI::Item],
          subtotal: Integer,
          address_id: String,
          card_id: String,
          shipping: TerminalShop::Models::CartAPI::Shipping
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
        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def shipping
        end

        sig { params(_: Integer).returns(Integer) }
        def shipping=(_)
        end

        sig { params(subtotal: Integer, shipping: Integer).returns(T.attached_class) }
        def self.new(subtotal:, shipping: nil)
        end

        sig { override.returns({subtotal: Integer, shipping: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

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

        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

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
        sig { returns(T.nilable(String)) }
        def service
        end

        sig { params(_: String).returns(String) }
        def service=(_)
        end

        sig { returns(T.nilable(String)) }
        def timeframe
        end

        sig { params(_: String).returns(String) }
        def timeframe=(_)
        end

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
