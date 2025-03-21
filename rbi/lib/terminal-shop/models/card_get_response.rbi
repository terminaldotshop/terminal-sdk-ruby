# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      # Credit card used for payments in the Terminal shop.
      sig { returns(TerminalShop::Models::CardAPI) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash))
      end
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
