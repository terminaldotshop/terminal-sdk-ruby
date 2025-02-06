# typed: strong

module Terminal
  module Models
    class ProductListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::ProductAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::ProductAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::ProductAPI]}) }
      def to_hash
      end
    end
  end
end
