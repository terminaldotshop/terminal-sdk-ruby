# typed: strong

module Terminal
  module Models
    class ViewInitResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::ViewInitResponse::Data) }
      attr_accessor :data

      sig { params(data: Terminal::Models::ViewInitResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::ViewInitResponse::Data}) }
      def to_hash
      end

      class Data < Terminal::BaseModel
        sig { returns(T::Array[Terminal::Models::AddressAPI]) }
        attr_accessor :addresses

        sig { returns(T::Array[Terminal::Models::AppAPI]) }
        attr_accessor :apps

        sig { returns(T::Array[Terminal::Models::CardAPI]) }
        attr_accessor :cards

        sig { returns(Terminal::Models::CartAPI) }
        attr_accessor :cart

        sig { returns(T::Array[Terminal::Models::OrderAPI]) }
        attr_accessor :orders

        sig { returns(T::Array[Terminal::Models::ProductAPI]) }
        attr_accessor :products

        sig { returns(Terminal::Models::ProfileAPI) }
        attr_accessor :profile

        sig { returns(T::Array[Terminal::Models::SubscriptionAPI]) }
        attr_accessor :subscriptions

        sig { returns(T::Array[Terminal::Models::TokenAPI]) }
        attr_accessor :tokens

        sig do
          params(
            addresses: T::Array[Terminal::Models::AddressAPI],
            apps: T::Array[Terminal::Models::AppAPI],
            cards: T::Array[Terminal::Models::CardAPI],
            cart: Terminal::Models::CartAPI,
            orders: T::Array[Terminal::Models::OrderAPI],
            products: T::Array[Terminal::Models::ProductAPI],
            profile: Terminal::Models::ProfileAPI,
            subscriptions: T::Array[Terminal::Models::SubscriptionAPI],
            tokens: T::Array[Terminal::Models::TokenAPI]
          ).void
        end
        def initialize(
          addresses:,
          apps:,
          cards:,
          cart:,
          orders:,
          products:,
          profile:,
          subscriptions:,
          tokens:
        )
        end

        sig do
          override.returns(
            {
              addresses: T::Array[Terminal::Models::AddressAPI],
              apps: T::Array[Terminal::Models::AppAPI],
              cards: T::Array[Terminal::Models::CardAPI],
              cart: Terminal::Models::CartAPI,
              orders: T::Array[Terminal::Models::OrderAPI],
              products: T::Array[Terminal::Models::ProductAPI],
              profile: Terminal::Models::ProfileAPI,
              subscriptions: T::Array[Terminal::Models::SubscriptionAPI],
              tokens: T::Array[Terminal::Models::TokenAPI]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
