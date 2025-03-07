# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CardAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::CardAPI).returns(TerminalShop::Models::CardAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::CardAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardAPI}) }
      def to_hash
      end
    end
  end
end
