# typed: strong

module Terminal
  module Resources
    class App
      sig do
        params(
          id: String,
          name: String,
          redirect_uri: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::AppCreateResponse)
      end
      def create(id:, name:, redirect_uri:, request_options: {})
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
        ).returns(Terminal::Models::AppListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::AppDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::AppGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
