# typed: strong

module TerminalShop
  module Models
    class ViewInitResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # Initial app data.
      sig { returns(TerminalShop::Models::ViewInitResponse::Data) }
      attr_reader :data

      sig do
        params(data: TerminalShop::Models::ViewInitResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: TerminalShop::Models::ViewInitResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Initial app data.
        data:
      )
      end

      sig do
        override.returns({ data: TerminalShop::Models::ViewInitResponse::Data })
      end
      def to_hash
      end

      class Data < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

        sig { returns(T::Array[TerminalShop::AddressAPI]) }
        attr_accessor :addresses

        sig { returns(T::Array[TerminalShop::AppAPI]) }
        attr_accessor :apps

        sig { returns(T::Array[TerminalShop::CardAPI]) }
        attr_accessor :cards

        # The current Terminal shop user's cart.
        sig { returns(TerminalShop::CartAPI) }
        attr_reader :cart

        sig { params(cart: TerminalShop::CartAPI::OrHash).void }
        attr_writer :cart

        sig { returns(T::Array[TerminalShop::OrderAPI]) }
        attr_accessor :orders

        sig { returns(T::Array[TerminalShop::ProductAPI]) }
        attr_accessor :products

        # A Terminal shop user's profile. (We have users, btw.)
        sig { returns(TerminalShop::ProfileAPI) }
        attr_reader :profile

        sig { params(profile: TerminalShop::ProfileAPI::OrHash).void }
        attr_writer :profile

        # A Terminal shop user's region.
        sig { returns(TerminalShop::Region::TaggedSymbol) }
        attr_accessor :region

        sig { returns(T::Array[TerminalShop::SubscriptionAPI]) }
        attr_accessor :subscriptions

        sig { returns(T::Array[TerminalShop::TokenAPI]) }
        attr_accessor :tokens

        # Initial app data.
        sig do
          params(
            addresses: T::Array[TerminalShop::AddressAPI::OrHash],
            apps: T::Array[TerminalShop::AppAPI::OrHash],
            cards: T::Array[TerminalShop::CardAPI::OrHash],
            cart: TerminalShop::CartAPI::OrHash,
            orders: T::Array[TerminalShop::OrderAPI::OrHash],
            products: T::Array[TerminalShop::ProductAPI::OrHash],
            profile: TerminalShop::ProfileAPI::OrHash,
            region: TerminalShop::Region::OrSymbol,
            subscriptions: T::Array[TerminalShop::SubscriptionAPI::OrHash],
            tokens: T::Array[TerminalShop::TokenAPI::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          addresses:,
          apps:,
          cards:,
          # The current Terminal shop user's cart.
          cart:,
          orders:,
          products:,
          # A Terminal shop user's profile. (We have users, btw.)
          profile:,
          # A Terminal shop user's region.
          region:,
          subscriptions:,
          tokens:
        )
        end

        sig do
          override.returns(
            {
              addresses: T::Array[TerminalShop::AddressAPI],
              apps: T::Array[TerminalShop::AppAPI],
              cards: T::Array[TerminalShop::CardAPI],
              cart: TerminalShop::CartAPI,
              orders: T::Array[TerminalShop::OrderAPI],
              products: T::Array[TerminalShop::ProductAPI],
              profile: TerminalShop::ProfileAPI,
              region: TerminalShop::Region::TaggedSymbol,
              subscriptions: T::Array[TerminalShop::SubscriptionAPI],
              tokens: T::Array[TerminalShop::TokenAPI]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
