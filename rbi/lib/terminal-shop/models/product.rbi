# typed: strong

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def description
      end

      sig { params(_: String).returns(String) }
      def description=(_)
      end

      sig { returns(T::Array[Symbol]) }
      def filters
      end

      sig { params(_: T::Array[Symbol]).returns(T::Array[Symbol]) }
      def filters=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(T::Array[TerminalShop::Models::ProductVariant]) }
      def variants
      end

      sig do
        params(_: T::Array[TerminalShop::Models::ProductVariant])
          .returns(T::Array[TerminalShop::Models::ProductVariant])
      end
      def variants=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def order
      end

      sig { params(_: Integer).returns(Integer) }
      def order=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def subscription
      end

      sig { params(_: Symbol).returns(Symbol) }
      def subscription=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def tags
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def tags=(_)
      end

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
        )
          .void
      end
      def initialize(id:, description:, filters:, name:, variants:, order: nil, subscription: nil, tags: nil)
      end

      sig do
        override
          .returns(
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
