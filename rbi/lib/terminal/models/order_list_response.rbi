# typed: strong

module Terminal
  module Models
    class OrderListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::OrderAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::OrderAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::OrderAPI]}) }
      def to_hash
      end
    end
  end
end
