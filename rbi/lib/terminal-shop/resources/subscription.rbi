# typed: strong

module TerminalShop
  module Resources
    class Subscription
      sig do
        params(
          id: String,
          address_id: String,
          card_id: String,
          frequency: Symbol,
          product_variant_id: String,
          quantity: Integer,
          next_: String,
          schedule: T.any(
            TerminalShop::Models::SubscriptionAPI::Schedule::Type,
            TerminalShop::Models::SubscriptionAPI::Schedule::UnionMember1
          ),
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::SubscriptionCreateResponse)
      end
      def create(
        id:,
        address_id:,
        card_id:,
        frequency:,
        product_variant_id:,
        quantity:,
        next_: nil,
        schedule: nil,
        request_options: {}
      )
      end

      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(TerminalShop::Models::SubscriptionListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::SubscriptionDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
