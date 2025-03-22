# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      # Credit card used for payments in the Terminal shop.
      sig { returns(TerminalShop::Models::CardAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

      sig { params(data: T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardAPI}) }
      def to_hash
      end
    end
  end
end
