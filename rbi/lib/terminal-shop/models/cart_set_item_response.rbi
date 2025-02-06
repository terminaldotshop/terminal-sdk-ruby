# typed: strong

module TerminalShop
  module Models
    class CartSetItemResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CartAPI) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::CartAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CartAPI}) }
      def to_hash
      end
    end
  end
end
