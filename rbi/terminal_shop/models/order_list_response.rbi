# typed: strong

module TerminalShop
  module Models
    class OrderListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # List of orders.
      sig { returns(T::Array[TerminalShop::OrderAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::OrderAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of orders.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::OrderAPI] }) }
      def to_hash
      end
    end
  end
end
