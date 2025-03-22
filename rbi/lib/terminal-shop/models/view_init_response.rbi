# typed: strong

module TerminalShop
  module Models
    class ViewInitResponse < TerminalShop::BaseModel
      # Initial app data.
      sig { returns(TerminalShop::Models::ViewInitResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::ViewInitResponse::Data, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::ViewInitResponse::Data, TerminalShop::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(data: T.any(TerminalShop::Models::ViewInitResponse::Data, TerminalShop::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ViewInitResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        sig { returns(T::Array[TerminalShop::Models::AddressAPI]) }
        def addresses
        end

        sig { params(_: T::Array[TerminalShop::Models::AddressAPI]).returns(T::Array[TerminalShop::Models::AddressAPI]) }
        def addresses=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
        def apps
        end

        sig { params(_: T::Array[TerminalShop::Models::AppAPI]).returns(T::Array[TerminalShop::Models::AppAPI]) }
        def apps=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
        def cards
        end

        sig { params(_: T::Array[TerminalShop::Models::CardAPI]).returns(T::Array[TerminalShop::Models::CardAPI]) }
        def cards=(_)
        end

        # The current Terminal shop user's cart.
        sig { returns(TerminalShop::Models::CartAPI) }
        def cart
        end

        sig do
          params(_: T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash))
            .returns(T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash))
        end
        def cart=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
        def orders
        end

        sig { params(_: T::Array[TerminalShop::Models::OrderAPI]).returns(T::Array[TerminalShop::Models::OrderAPI]) }
        def orders=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
        def products
        end

        sig { params(_: T::Array[TerminalShop::Models::ProductAPI]).returns(T::Array[TerminalShop::Models::ProductAPI]) }
        def products=(_)
        end

        # A Terminal shop user's profile. (We have users, btw.)
        sig { returns(TerminalShop::Models::ProfileAPI) }
        def profile
        end

        sig do
          params(_: T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash))
            .returns(T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash))
        end
        def profile=(_)
        end

        # A Terminal shop user's region.
        sig { returns(TerminalShop::Models::Region::TaggedSymbol) }
        def region
        end

        sig { params(_: TerminalShop::Models::Region::TaggedSymbol).returns(TerminalShop::Models::Region::TaggedSymbol) }
        def region=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
        def subscriptions
        end

        sig do
          params(_: T::Array[TerminalShop::Models::SubscriptionAPI])
            .returns(T::Array[TerminalShop::Models::SubscriptionAPI])
        end
        def subscriptions=(_)
        end

        sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
        def tokens
        end

        sig { params(_: T::Array[TerminalShop::Models::TokenAPI]).returns(T::Array[TerminalShop::Models::TokenAPI]) }
        def tokens=(_)
        end

        # Initial app data.
        sig do
          params(
            addresses: T::Array[T.any(TerminalShop::Models::AddressAPI, TerminalShop::Util::AnyHash)],
            apps: T::Array[T.any(TerminalShop::Models::AppAPI, TerminalShop::Util::AnyHash)],
            cards: T::Array[T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash)],
            cart: T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash),
            orders: T::Array[T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash)],
            products: T::Array[T.any(TerminalShop::Models::ProductAPI, TerminalShop::Util::AnyHash)],
            profile: T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash),
            region: TerminalShop::Models::Region::OrSymbol,
            subscriptions: T::Array[T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Util::AnyHash)],
            tokens: T::Array[T.any(TerminalShop::Models::TokenAPI, TerminalShop::Util::AnyHash)]
          )
            .returns(T.attached_class)
        end
        def self.new(addresses:, apps:, cards:, cart:, orders:, products:, profile:, region:, subscriptions:, tokens:)
        end

        sig do
          override
            .returns(
              {
                addresses: T::Array[TerminalShop::Models::AddressAPI],
                apps: T::Array[TerminalShop::Models::AppAPI],
                cards: T::Array[TerminalShop::Models::CardAPI],
                cart: TerminalShop::Models::CartAPI,
                orders: T::Array[TerminalShop::Models::OrderAPI],
                products: T::Array[TerminalShop::Models::ProductAPI],
                profile: TerminalShop::Models::ProfileAPI,
                region: TerminalShop::Models::Region::TaggedSymbol,
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
