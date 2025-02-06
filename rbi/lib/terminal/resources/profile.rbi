# typed: strong

module Terminal
  module Resources
    class Profile
      sig do
        params(
          email: T.nilable(String),
          name: T.nilable(String),
          request_options: T.nilable(T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Terminal::Models::ProfileUpdateResponse)
      end
      def update(email: nil, name: nil, request_options: {})
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
        ).returns(Terminal::Models::ProfileMeResponse)
      end
      def me(request_options: {})
      end

      sig { params(client: Terminal::Client).void }
      def initialize(client:)
      end
    end
  end
end
