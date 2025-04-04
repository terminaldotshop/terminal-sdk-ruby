# typed: strong

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::BaseModel
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
      sig { returns(T::Array[TerminalShop::Models::ProductVariant]) }
      attr_accessor :variants

      # Order of the product used when displaying a sorted list of products.
      sig { returns(T.nilable(Integer)) }
      attr_reader :order

      sig { params(order: Integer).void }
      attr_writer :order

      # Whether the product must be or can be subscribed to.
      sig { returns(T.nilable(TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol)) }
      attr_reader :subscription

      sig { params(subscription: TerminalShop::Models::ProductAPI::Subscription::OrSymbol).void }
      attr_writer :subscription

      # Tags for the product.
      sig { returns(T.nilable(TerminalShop::Models::ProductAPI::Tags)) }
      attr_reader :tags

      sig { params(tags: T.any(TerminalShop::Models::ProductAPI::Tags, TerminalShop::Internal::Util::AnyHash)).void }
      attr_writer :tags

      # Product sold in the Terminal shop.
      sig do
        params(
          id: String,
          description: String,
          name: String,
          variants: T::Array[T.any(TerminalShop::Models::ProductVariant, TerminalShop::Internal::Util::AnyHash)],
          order: Integer,
          subscription: TerminalShop::Models::ProductAPI::Subscription::OrSymbol,
          tags: T.any(TerminalShop::Models::ProductAPI::Tags, TerminalShop::Internal::Util::AnyHash)
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
              subscription: TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol,
              tags: TerminalShop::Models::ProductAPI::Tags
            }
          )
      end
      def to_hash
      end

      # Whether the product must be or can be subscribed to.
      module Subscription
        extend TerminalShop::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, TerminalShop::Models::ProductAPI::Subscription) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol) }

        ALLOWED = T.let(:allowed, TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol)
        REQUIRED = T.let(:required, TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol)

        sig { override.returns(T::Array[TerminalShop::Models::ProductAPI::Subscription::TaggedSymbol]) }
        def self.values
        end
      end

      class Tags < TerminalShop::BaseModel
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
