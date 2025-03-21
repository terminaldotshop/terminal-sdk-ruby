# typed: strong

module TerminalShop
  module Models
    class TokenGetResponse < TerminalShop::BaseModel
      # A personal access token used to access the Terminal API. If you leak this,
      #   expect large sums of coffee to be ordered on your credit card.
      sig { returns(TerminalShop::Models::TokenAPI) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::TokenAPI, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::TokenAPI, TerminalShop::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: T.any(TerminalShop::Models::TokenAPI, TerminalShop::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::TokenAPI}) }
      def to_hash
      end
    end
  end
end
