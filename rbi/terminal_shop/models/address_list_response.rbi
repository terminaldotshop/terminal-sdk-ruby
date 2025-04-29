# typed: strong

module TerminalShop
  module Models
    class AddressListResponse < TerminalShop::Internal::Type::BaseModel
      # Shipping addresses.
      sig { returns(T::Array[TerminalShop::Models::AddressAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::AddressAPI, TerminalShop::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(
        # Shipping addresses.
        data:
      ); end
      sig { override.returns({data: T::Array[TerminalShop::Models::AddressAPI]}) }
      def to_hash; end
    end
  end
end
