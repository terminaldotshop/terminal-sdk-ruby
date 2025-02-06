# typed: strong

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :description

      sig { returns(T::Array[Symbol]) }
      attr_accessor :filters

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[TerminalShop::Models::ProductVariant]) }
      attr_accessor :variants

      sig { returns(T.nilable(Integer)) }
      attr_reader :order

      sig { params(order: Integer).void }
      attr_writer :order

      sig { returns(T.nilable(Symbol)) }
      attr_reader :subscription

      sig { params(subscription: Symbol).void }
      attr_writer :subscription

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :tags

      sig { params(tags: T::Hash[Symbol, String]).void }
      attr_writer :tags

      sig do
        params(
          id: String,
          description: String,
          filters: T::Array[Symbol],
          name: String,
          variants: T::Array[TerminalShop::Models::ProductVariant],
          order: Integer,
          subscription: Symbol,
          tags: T::Hash[Symbol, String]
        ).void
      end
      def initialize(id:, description:, filters:, name:, variants:, order: nil, subscription: nil, tags: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            description: String,
            filters: T::Array[Symbol],
            name: String,
            variants: T::Array[TerminalShop::Models::ProductVariant],
            order: Integer,
            subscription: Symbol,
            tags: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash
      end

      class Filter < TerminalShop::Enum
        abstract!

        EU = :eu
        NA = :na

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Subscription < TerminalShop::Enum
        abstract!

        ALLOWED = :allowed
        REQUIRED = :required

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
