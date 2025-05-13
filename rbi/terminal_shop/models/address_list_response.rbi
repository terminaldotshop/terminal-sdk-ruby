# typed: strong

module TerminalShop
  module Models
    class AddressListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::AddressListResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # Shipping addresses.
      sig { returns(T::Array[TerminalShop::AddressAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::AddressAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # Shipping addresses.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::AddressAPI] }) }
      def to_hash
      end
    end
  end
end
