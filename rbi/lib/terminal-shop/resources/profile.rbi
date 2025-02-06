# typed: strong

module TerminalShop
  module Resources
    class Profile
      sig do
        params(
          email: T.nilable(String),
          name: T.nilable(String),
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(TerminalShop::Models::ProfileUpdateResponse)
      end
      def update(email: nil, name: nil, request_options: {})
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
        ).returns(TerminalShop::Models::ProfileMeResponse)
      end
      def me(request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
