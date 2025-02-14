# typed: strong

module TerminalShop
  module Models
    class ProductListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
      def data
      end

      sig do
        params(_: T::Array[TerminalShop::Models::ProductAPI]).returns(T::Array[TerminalShop::Models::ProductAPI])
      end
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::ProductAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::ProductAPI]}) }
      def to_hash
      end
    end
  end
end
