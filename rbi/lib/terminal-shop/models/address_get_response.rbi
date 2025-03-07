# typed: strong

module TerminalShop
  module Models
    class AddressGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::AddressAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::AddressAPI).returns(TerminalShop::Models::AddressAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::AddressAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AddressAPI}) }
      def to_hash
      end
    end
  end
end
