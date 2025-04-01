# typed: strong

module TerminalShop
  module Models
    class ViewInitResponse < TerminalShop::BaseModel
      # Initial app data.
      sig { returns(TerminalShop::Models::ViewInitResponse::Data) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::ViewInitResponse::Data, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

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
        attr_accessor :addresses

        sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
        attr_accessor :apps

        sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
        attr_accessor :cards

        # The current Terminal shop user's cart.
        sig { returns(TerminalShop::Models::CartAPI) }
        attr_reader :cart

        sig { params(cart: T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash)).void }
        attr_writer :cart

        sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
        attr_accessor :orders

        sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
        attr_accessor :products

        # A Terminal shop user's profile. (We have users, btw.)
        sig { returns(TerminalShop::Models::ProfileAPI) }
        attr_reader :profile

        sig { params(profile: T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash)).void }
        attr_writer :profile

        # A Terminal shop user's region.
        sig { returns(TerminalShop::Models::Region::TaggedSymbol) }
        attr_accessor :region

        sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
        attr_accessor :subscriptions

        sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
        attr_accessor :tokens

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
        def self.new(
          addresses:,
          apps:,
          cards:,
          cart:,
          orders:,
          products:,
          profile:,
          region:,
          subscriptions:,
          tokens:
        )
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
