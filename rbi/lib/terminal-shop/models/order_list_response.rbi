# typed: strong

module TerminalShop
  module Models
    class OrderListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::OrderAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::OrderAPI]}) }
      def to_hash
      end
    end
  end
end
