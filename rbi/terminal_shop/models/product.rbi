# typed: strong

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Description of the product.
      sig { returns(String) }
      attr_accessor :description

      # Name of the product.
      sig { returns(String) }
      attr_accessor :name

      # List of variants of the product.
      sig { returns(T::Array[TerminalShop::ProductVariant]) }
      attr_accessor :variants

      # Order of the product used when displaying a sorted list of products.
      sig { returns(T.nilable(Integer)) }
      attr_reader :order

      sig { params(order: Integer).void }
      attr_writer :order

      # Whether the product must be or can be subscribed to.
      sig do
        returns(T.nilable(TerminalShop::ProductAPI::Subscription::TaggedSymbol))
      end
      attr_reader :subscription

      sig do
        params(
          subscription: TerminalShop::ProductAPI::Subscription::OrSymbol
        ).void
      end
      attr_writer :subscription

      # Tags for the product.
      sig { returns(T.nilable(TerminalShop::ProductAPI::Tags)) }
      attr_reader :tags

      sig { params(tags: TerminalShop::ProductAPI::Tags::OrHash).void }
      attr_writer :tags

      # Product sold in the Terminal shop.
      sig do
        params(
          id: String,
          description: String,
          name: String,
          variants: T::Array[TerminalShop::ProductVariant::OrHash],
          order: Integer,
          subscription: TerminalShop::ProductAPI::Subscription::OrSymbol,
          tags: TerminalShop::ProductAPI::Tags::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # Description of the product.
        description:,
        # Name of the product.
        name:,
        # List of variants of the product.
        variants:,
        # Order of the product used when displaying a sorted list of products.
        order: nil,
        # Whether the product must be or can be subscribed to.
        subscription: nil,
        # Tags for the product.
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: String,
            name: String,
            variants: T::Array[TerminalShop::ProductVariant],
            order: Integer,
            subscription: TerminalShop::ProductAPI::Subscription::TaggedSymbol,
            tags: TerminalShop::ProductAPI::Tags
          }
        )
      end
      def to_hash
      end

      # Whether the product must be or can be subscribed to.
      module Subscription
        extend TerminalShop::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, TerminalShop::ProductAPI::Subscription) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALLOWED =
          T.let(:allowed, TerminalShop::ProductAPI::Subscription::TaggedSymbol)
        REQUIRED =
          T.let(:required, TerminalShop::ProductAPI::Subscription::TaggedSymbol)

        sig do
          override.returns(
            T::Array[TerminalShop::ProductAPI::Subscription::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Tags < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :app

        sig { params(app: String).void }
        attr_writer :app

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :featured

        sig { params(featured: T::Boolean).void }
        attr_writer :featured

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

        # Tags for the product.
        sig do
          params(
            app: String,
            color: String,
            featured: T::Boolean,
            market_eu: T::Boolean,
            market_global: T::Boolean,
            market_na: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          app: nil,
          color: nil,
          featured: nil,
          market_eu: nil,
          market_global: nil,
          market_na: nil
        )
        end

        sig do
          override.returns(
            {
              app: String,
              color: String,
              featured: T::Boolean,
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
