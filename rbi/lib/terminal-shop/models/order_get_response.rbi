# typed: strong

module TerminalShop
  module Models
    class OrderGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::OrderAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::OrderAPI).returns(TerminalShop::Models::OrderAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::OrderAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::OrderAPI}) }
      def to_hash
      end
    end
  end
end
