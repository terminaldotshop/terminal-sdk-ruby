# typed: strong

module Terminal
  module Resources
    class Token
      sig do
        params(
          request_options: T.nilable(
            T.any(
              Terminal::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Terminal::Models::TokenCreateResponse)
      end
      def create(request_options: {})
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
        ).returns(Terminal::Models::TokenListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::TokenDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::TokenGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
