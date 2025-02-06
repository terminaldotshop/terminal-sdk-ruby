# typed: strong

module TerminalShop
  module Models
    class TokenListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::TokenAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::TokenAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::TokenAPI]}) }
      def to_hash
      end
    end
  end
end
