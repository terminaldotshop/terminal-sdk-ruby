# typed: strong

module TerminalShop
  module Models
    class TokenGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::TokenGetResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # A personal access token used to access the Terminal API. If you leak this,
      # expect large sums of coffee to be ordered on your credit card.
      sig { returns(TerminalShop::TokenAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::TokenAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::TokenAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A personal access token used to access the Terminal API. If you leak this,
        # expect large sums of coffee to be ordered on your credit card.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::TokenAPI }) }
      def to_hash
      end
    end
  end
end
