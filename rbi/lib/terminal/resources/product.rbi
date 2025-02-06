# typed: strong

module Terminal
  module Resources
    class Product
      sig do
        params(
          request_options: T.nilable(
            T.any(
              Terminal::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Terminal::Models::ProductListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
