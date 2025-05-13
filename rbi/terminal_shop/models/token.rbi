# typed: strong

module TerminalShop
  module Models
    class TokenAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TerminalShop::TokenAPI, TerminalShop::Internal::AnyHash)
        end

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Personal access token (obfuscated).
      sig { returns(String) }
      attr_accessor :token

      # The created time for the token.
      sig { returns(String) }
      attr_accessor :created

      # A personal access token used to access the Terminal API. If you leak this,
      # expect large sums of coffee to be ordered on your credit card.
      sig do
        params(id: String, token: String, created: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # Personal access token (obfuscated).
        token:,
        # The created time for the token.
        created:
      )
      end

      sig { override.returns({ id: String, token: String, created: String }) }
      def to_hash
      end
    end
  end
end
