# typed: strong

module TerminalShop
  module Models
    class TokenListResponse < TerminalShop::BaseModel
      # List of personal access tokens.
      sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::TokenAPI]).returns(T::Array[TerminalShop::Models::TokenAPI]) }
      def data=(_)
      end

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::TokenAPI, TerminalShop::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::TokenAPI]}) }
      def to_hash
      end
    end
  end
end
