# typed: strong

module Terminal
  module Resources
    class Cart
      sig do
        params(
          request_options: T.nilable(
            T.any(
              Terminal::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Terminal::Models::CartConvertResponse)
      end
      def convert(request_options: {})
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
        ).returns(Terminal::Models::CartGetResponse)
      end
      def get(request_options: {})
      end

      sig do
        params(
          address_id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::CartSetAddressResponse)
      end
      def set_address(address_id:, request_options: {})
      end

      sig do
        params(
          card_id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::CartSetCardResponse)
      end
      def set_card(card_id:, request_options: {})
      end

      sig do
        params(
          product_variant_id: String,
          quantity: Integer,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::CartSetItemResponse)
      end
      def set_item(product_variant_id:, quantity:, request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
