# typed: strong

module TerminalShop
  module Models
    class CartConvertResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::OrderAPI) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::OrderAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::OrderAPI}) }
      def to_hash
      end
    end
  end
end
