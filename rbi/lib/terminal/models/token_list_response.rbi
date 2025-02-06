# typed: strong

module Terminal
  module Models
    class TokenListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::TokenAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::TokenAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::TokenAPI]}) }
      def to_hash
      end
    end
  end
end
