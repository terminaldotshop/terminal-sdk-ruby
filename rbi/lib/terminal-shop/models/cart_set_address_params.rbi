# typed: strong

module TerminalShop
  module Models
    class CartSetAddressParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      sig do
        params(
          address_id: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(address_id:, request_options: {})
      end

      sig { override.returns({address_id: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
