# typed: strong

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(Symbol) }
      def frequency
      end

      sig { params(_: Symbol).returns(Symbol) }
      def frequency=(_)
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

      sig { returns(T.nilable(String)) }
      def next_
      end

      sig { params(_: String).returns(String) }
      def next_=(_)
      end

      sig do
        params(
          id: String,
          address_id: String,
          card_id: String,
          frequency: Symbol,
          product_variant_id: String,
          quantity: Integer,
          next_: String
        ).void
      end
      def initialize(id:, address_id:, card_id:, frequency:, product_variant_id:, quantity:, next_: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            address_id: String,
            card_id: String,
            frequency: Symbol,
            product_variant_id: String,
            quantity: Integer,
            next_: String
          }
        )
      end
      def to_hash
      end

      class Frequency < TerminalShop::Enum
        abstract!

        FIXED = :fixed
        DAILY = :daily
        WEEKLY = :weekly
        MONTHLY = :monthly
        YEARLY = :yearly

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
