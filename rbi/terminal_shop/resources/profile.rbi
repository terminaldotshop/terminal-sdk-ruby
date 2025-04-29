# typed: strong

module TerminalShop
  module Resources
    class Profile
      # Update the current user's profile.
      sig do
        params(email: String, name: String, request_options: TerminalShop::RequestOpts)
          .returns(TerminalShop::Models::ProfileUpdateResponse)
      end
      def update(email:, name:, request_options: {}); end

      # Get the current user's profile.
      sig { params(request_options: TerminalShop::RequestOpts).returns(TerminalShop::Models::ProfileMeResponse) }
      def me(request_options: {}); end

      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
