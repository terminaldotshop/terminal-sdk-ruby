# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      # Credit card used for payments in the Terminal shop.
      sig { returns(TerminalShop::Models::CardAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::CardAPI).returns(TerminalShop::Models::CardAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::CardAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardAPI}) }
      def to_hash
      end
    end
  end
end
