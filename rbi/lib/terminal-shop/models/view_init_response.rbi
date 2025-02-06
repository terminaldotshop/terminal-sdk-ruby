# typed: strong

module TerminalShop
  module Models
    class ViewInitResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ViewInitResponse::Data) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::ViewInitResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ViewInitResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        sig { returns(T::Array[TerminalShop::Models::AddressAPI]) }
        attr_accessor :addresses

        sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
        attr_accessor :apps

        sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
        attr_accessor :cards

        sig { returns(TerminalShop::Models::CartAPI) }
        attr_accessor :cart

        sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
        attr_accessor :orders

        sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
        attr_accessor :products

        sig { returns(TerminalShop::Models::ProfileAPI) }
        attr_accessor :profile

        sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
        attr_accessor :subscriptions

        sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
        attr_accessor :tokens

        sig do
          params(
            addresses: T::Array[TerminalShop::Models::AddressAPI],
            apps: T::Array[TerminalShop::Models::AppAPI],
            cards: T::Array[TerminalShop::Models::CardAPI],
            cart: TerminalShop::Models::CartAPI,
            orders: T::Array[TerminalShop::Models::OrderAPI],
            products: T::Array[TerminalShop::Models::ProductAPI],
            profile: TerminalShop::Models::ProfileAPI,
            subscriptions: T::Array[TerminalShop::Models::SubscriptionAPI],
            tokens: T::Array[TerminalShop::Models::TokenAPI]
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
              addresses: T::Array[TerminalShop::Models::AddressAPI],
              apps: T::Array[TerminalShop::Models::AppAPI],
              cards: T::Array[TerminalShop::Models::CardAPI],
              cart: TerminalShop::Models::CartAPI,
              orders: T::Array[TerminalShop::Models::OrderAPI],
              products: T::Array[TerminalShop::Models::ProductAPI],
              profile: TerminalShop::Models::ProfileAPI,
              subscriptions: T::Array[TerminalShop::Models::SubscriptionAPI],
              tokens: T::Array[TerminalShop::Models::TokenAPI]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
