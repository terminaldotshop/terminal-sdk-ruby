# typed: strong

module TerminalShop
  module Models
    class TokenGetResponse < TerminalShop::Internal::Type::BaseModel
      # A personal access token used to access the Terminal API. If you leak this,
      # expect large sums of coffee to be ordered on your credit card.
      sig { returns(TerminalShop::Models::TokenAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::TokenAPI, TerminalShop::Internal::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::TokenAPI, TerminalShop::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(
        # A personal access token used to access the Terminal API. If you leak this,
        # expect large sums of coffee to be ordered on your credit card.
        data:
      ); end
      sig { override.returns({data: TerminalShop::Models::TokenAPI}) }
      def to_hash; end
    end
  end
end
