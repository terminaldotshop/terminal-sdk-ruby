# typed: strong

module TerminalShop
  module Models
    class ProductListResponse < TerminalShop::BaseModel
      # A list of products.
      sig { returns(T::Array[TerminalShop::Models::ProductAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::ProductAPI]).returns(T::Array[TerminalShop::Models::ProductAPI]) }
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::ProductAPI]).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::ProductAPI]}) }
      def to_hash
      end
    end
  end
end
