# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      # Credit card used for payments in the Terminal shop.
      sig { returns(TerminalShop::Models::CardAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::CardAPI, TerminalShop::Internal::Util::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::CardAPI, TerminalShop::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardAPI}) }
      def to_hash
      end
    end
  end
end
