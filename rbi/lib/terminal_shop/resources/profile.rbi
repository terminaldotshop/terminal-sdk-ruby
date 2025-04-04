# typed: strong

module TerminalShop
  module Resources
    class Profile
      # Update the current user's profile.
      sig do
        params(
          email: String,
          name: String,
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::Util::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::ProfileUpdateResponse)
      end
      def update(email:, name:, request_options: {})
      end

      # Get the current user's profile.
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::Util::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::ProfileMeResponse)
      end
      def me(request_options: {})
      end

      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
