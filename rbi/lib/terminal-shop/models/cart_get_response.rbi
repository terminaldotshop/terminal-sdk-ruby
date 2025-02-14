# typed: strong

module TerminalShop
  module Models
    class CartGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CartAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::CartAPI).returns(TerminalShop::Models::CartAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::CartAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CartAPI}) }
      def to_hash
      end
    end
  end
end
