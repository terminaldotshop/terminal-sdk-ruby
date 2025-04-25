# typed: strong

module TerminalShop
  module Models
    class OrderListResponse < TerminalShop::Internal::Type::BaseModel
      # List of orders.
      sig { returns(T::Array[TerminalShop::Models::OrderAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::OrderAPI, TerminalShop::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(
        # List of orders.
        data:
      ); end
      sig { override.returns({data: T::Array[TerminalShop::Models::OrderAPI]}) }
      def to_hash; end
    end
  end
end
