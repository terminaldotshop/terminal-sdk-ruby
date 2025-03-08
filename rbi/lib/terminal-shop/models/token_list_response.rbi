# typed: strong

module TerminalShop
  module Models
    class TokenListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::TokenAPI]).returns(T::Array[TerminalShop::Models::TokenAPI]) }
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::TokenAPI]).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::TokenAPI]}) }
      def to_hash
      end
    end
  end
end
