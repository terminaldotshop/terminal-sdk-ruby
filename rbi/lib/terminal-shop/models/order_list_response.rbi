# typed: strong

module TerminalShop
  module Models
    class OrderListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::OrderAPI]).returns(T::Array[TerminalShop::Models::OrderAPI]) }
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::OrderAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::OrderAPI]}) }
      def to_hash
      end
    end
  end
end
