# typed: strong

module TerminalShop
  module Resources
    class Order
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(TerminalShop::Models::OrderListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::OrderGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
