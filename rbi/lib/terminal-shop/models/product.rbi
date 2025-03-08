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

      sig { returns(T.nilable(TerminalShop::Models::ProductAPI::Tags)) }
      def tags
      end

      sig { params(_: TerminalShop::Models::ProductAPI::Tags).returns(TerminalShop::Models::ProductAPI::Tags) }
      def tags=(_)
      end

      sig do
        params(
          id: String,
          description: String,
          name: String,
          variants: T::Array[TerminalShop::Models::ProductVariant],
          order: Integer,
          subscription: Symbol,
          tags: TerminalShop::Models::ProductAPI::Tags
        )
          .returns(T.attached_class)
      end
      def self.new(id:, description:, name:, variants:, order: nil, subscription: nil, tags: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              description: String,
              name: String,
              variants: T::Array[TerminalShop::Models::ProductVariant],
              order: Integer,
              subscription: Symbol,
              tags: TerminalShop::Models::ProductAPI::Tags
            }
          )
      end
      def to_hash
      end

      class Subscription < TerminalShop::Enum
        abstract!

        ALLOWED = :allowed
        REQUIRED = :required

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Tags < TerminalShop::BaseModel
        sig { returns(T.nilable(String)) }
        def app
        end

        sig { params(_: String).returns(String) }
        def app=(_)
        end

        sig { returns(T.nilable(String)) }
        def color
        end

        sig { params(_: String).returns(String) }
        def color=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def featured
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def featured=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def market_eu
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def market_eu=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def market_na
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def market_na=(_)
        end

        sig do
          params(
            app: String,
            color: String,
            featured: T::Boolean,
            market_eu: T::Boolean,
            market_na: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(app: nil, color: nil, featured: nil, market_eu: nil, market_na: nil)
        end

        sig do
          override
            .returns({
                       app: String,
                       color: String,
                       featured: T::Boolean,
                       market_eu: T::Boolean,
                       market_na: T::Boolean
                     })
        end
        def to_hash
        end
      end
    end
  end
end
