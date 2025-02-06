# typed: strong

module TerminalShop
  module Models
    class ProductListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::ProductAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::ProductAPI]}) }
      def to_hash
      end
    end
  end
end
