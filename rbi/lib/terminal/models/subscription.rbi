# typed: strong

module Terminal
  module Models
    class SubscriptionAPI < Terminal::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :address_id

      sig { returns(String) }
      attr_accessor :card_id

      sig { returns(Symbol) }
      attr_accessor :frequency

      sig { returns(String) }
      attr_accessor :product_variant_id

      sig { returns(Integer) }
      attr_accessor :quantity

      sig { returns(T.nilable(String)) }
      attr_reader :next_

      sig { params(next_: String).void }
      attr_writer :next_

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

      class Frequency < Terminal::Enum
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
