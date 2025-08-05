# typed: strong

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TerminalShop::ProductVariant, TerminalShop::Internal::AnyHash)
        end

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Name of the product variant.
      sig { returns(String) }
      attr_accessor :name

      # Price of the product variant in cents (USD).
      sig { returns(Integer) }
      attr_accessor :price

      # Tags for the product variant.
      sig { returns(T.nilable(TerminalShop::ProductVariant::Tags)) }
      attr_reader :tags

      sig { params(tags: TerminalShop::ProductVariant::Tags::OrHash).void }
      attr_writer :tags

      # Variant of a product in the Terminal shop.
      sig do
        params(
          id: String,
          name: String,
          price: Integer,
          tags: TerminalShop::ProductVariant::Tags::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # Name of the product variant.
        name:,
        # Price of the product variant in cents (USD).
        price:,
        # Tags for the product variant.
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            price: Integer,
            tags: TerminalShop::ProductVariant::Tags
          }
        )
      end
      def to_hash
      end

      class Tags < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::ProductVariant::Tags,
              TerminalShop::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :app

        sig { params(app: String).void }
        attr_writer :app

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :market_eu

        sig { params(market_eu: T::Boolean).void }
        attr_writer :market_eu

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :market_global

        sig { params(market_global: T::Boolean).void }
        attr_writer :market_global

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :market_na

        sig { params(market_na: T::Boolean).void }
        attr_writer :market_na

        # Tags for the product variant.
        sig do
          params(
            app: String,
            market_eu: T::Boolean,
            market_global: T::Boolean,
            market_na: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          app: nil,
          market_eu: nil,
          market_global: nil,
          market_na: nil
        )
        end

        sig do
          override.returns(
            {
              app: String,
              market_eu: T::Boolean,
              market_global: T::Boolean,
              market_na: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
