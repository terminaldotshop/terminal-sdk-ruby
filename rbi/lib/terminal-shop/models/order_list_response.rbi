# typed: strong

module TerminalShop
  module Models
    class OrderListResponse < TerminalShop::BaseModel
      # List of orders.
      sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::OrderAPI]}) }
      def to_hash
      end
    end
  end
end
