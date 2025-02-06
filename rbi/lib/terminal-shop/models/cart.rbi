# typed: strong

module TerminalShop
  module Models
    class CartAPI < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CartAPI::Amount) }
      attr_accessor :amount

      sig { returns(T::Array[TerminalShop::Models::CartAPI::Item]) }
      attr_accessor :items

      sig { returns(Integer) }
      attr_accessor :subtotal

      sig { returns(T.nilable(String)) }
      attr_reader :address_id

      sig { params(address_id: String).void }
      attr_writer :address_id

      sig { returns(T.nilable(String)) }
      attr_reader :card_id

      sig { params(card_id: String).void }
      attr_writer :card_id

      sig { returns(T.nilable(TerminalShop::Models::CartAPI::Shipping)) }
      attr_reader :shipping

      sig { params(shipping: TerminalShop::Models::CartAPI::Shipping).void }
      attr_writer :shipping

      sig do
        params(
          amount: TerminalShop::Models::CartAPI::Amount,
          items: T::Array[TerminalShop::Models::CartAPI::Item],
          subtotal: Integer,
          address_id: String,
          card_id: String,
          shipping: TerminalShop::Models::CartAPI::Shipping
        ).void
      end
      def initialize(amount:, items:, subtotal:, address_id: nil, card_id: nil, shipping: nil)
      end

      sig do
        override.returns(
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
        attr_accessor :subtotal

        sig { returns(T.nilable(Integer)) }
        attr_reader :shipping

        sig { params(shipping: Integer).void }
        attr_writer :shipping

        sig { params(subtotal: Integer, shipping: Integer).void }
        def initialize(subtotal:, shipping: nil)
        end

        sig { override.returns({subtotal: Integer, shipping: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :product_variant_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { returns(Integer) }
        attr_accessor :subtotal

        sig { params(id: String, product_variant_id: String, quantity: Integer, subtotal: Integer).void }
        def initialize(id:, product_variant_id:, quantity:, subtotal:)
        end

        sig do
          override.returns({id: String, product_variant_id: String, quantity: Integer, subtotal: Integer})
        end
        def to_hash
        end
      end

      class Shipping < TerminalShop::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :service

        sig { params(service: String).void }
        attr_writer :service

        sig { returns(T.nilable(String)) }
        attr_reader :timeframe

        sig { params(timeframe: String).void }
        attr_writer :timeframe

        sig { params(service: String, timeframe: String).void }
        def initialize(service: nil, timeframe: nil)
        end

        sig { override.returns({service: String, timeframe: String}) }
        def to_hash
        end
      end
    end
  end
end
