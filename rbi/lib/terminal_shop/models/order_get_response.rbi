# typed: strong

module TerminalShop
  module Models
    class OrderGetResponse < TerminalShop::BaseModel
      # An order from the Terminal shop.
      sig { returns(TerminalShop::Models::OrderAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

      sig { params(data: T.any(TerminalShop::Models::OrderAPI, TerminalShop::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::OrderAPI}) }
      def to_hash
      end
    end
  end
end
