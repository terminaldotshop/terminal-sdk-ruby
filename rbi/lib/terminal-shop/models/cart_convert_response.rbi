# typed: strong

module TerminalShop
  module Models
    class CartConvertResponse < TerminalShop::BaseModel
      # An order from the Terminal shop.
      sig { returns(TerminalShop::Models::OrderAPI) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash))
      end
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
