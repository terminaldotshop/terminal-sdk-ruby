# typed: strong

module TerminalShop
  module Resources
    class Profile
      sig do
        params(
          email: String,
          name: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::ProfileUpdateResponse)
      end
      def update(email:, name:, request_options: {})
      end

      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(TerminalShop::Models::ProfileMeResponse)
      end
      def me(request_options: {})
      end

      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
