# typed: strong

module TerminalShop
  module Resources
    class Token
      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(TerminalShop::Models::TokenCreateResponse)
      end
      def create(request_options: {})
      end

      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(TerminalShop::Models::TokenListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::TokenDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::TokenGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
