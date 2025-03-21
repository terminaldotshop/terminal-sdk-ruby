# typed: strong

module TerminalShop
  module Models
    class CartSetAddressParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # ID of the shipping address to set for the current user's cart.
      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      sig do
        params(
          address_id: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(address_id:, request_options: {})
      end

      sig { override.returns({address_id: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
