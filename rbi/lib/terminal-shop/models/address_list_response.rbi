# typed: strong

module TerminalShop
  module Models
    class AddressListResponse < TerminalShop::BaseModel
      # Shipping addresses.
      sig { returns(T::Array[TerminalShop::Models::AddressAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::AddressAPI]).returns(T::Array[TerminalShop::Models::AddressAPI]) }
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::AddressAPI]).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::AddressAPI]}) }
      def to_hash
      end
    end
  end
end
