# typed: strong

module TerminalShop
  module Models
    class TokenListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # List of personal access tokens.
      sig { returns(T::Array[TerminalShop::TokenAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::TokenAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of personal access tokens.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::TokenAPI] }) }
      def to_hash
      end
    end
  end
end
