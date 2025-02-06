# typed: strong

module Terminal
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
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::SubscriptionCreateResponse)
      end
      def create(
        id:,
        address_id:,
        card_id:,
        frequency:,
        product_variant_id:,
        quantity:,
        next_: nil,
        request_options: {}
      )
      end

      sig do
        params(
          request_options: T.nilable(
            T.any(
              Terminal::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Terminal::Models::SubscriptionListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::SubscriptionDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
