# typed: strong

module TerminalShop
  module Models
    class CartSetAddressParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # ID of the shipping address to set for the current user's cart.
      sig { returns(String) }
      attr_accessor :address_id

      sig do
        params(
          address_id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the shipping address to set for the current user's cart.
        address_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { address_id: String, request_options: TerminalShop::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
