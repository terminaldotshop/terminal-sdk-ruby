# typed: strong

module TerminalShop
  module Resources
    class Cart
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(TerminalShop::Models::CartConvertResponse)
      end
      def convert(request_options: {})
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
        ).returns(TerminalShop::Models::CartGetResponse)
      end
      def get(request_options: {})
      end

      sig do
        params(
          address_id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::CartSetAddressResponse)
      end
      def set_address(address_id:, request_options: {})
      end

      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::CartSetCardResponse)
      end
      def set_card(card_id:, request_options: {})
      end

      sig do
        params(
          product_variant_id: String,
          quantity: Integer,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::CartSetItemResponse)
      end
      def set_item(product_variant_id:, quantity:, request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
