# typed: strong

module TerminalShop
  module Models
    class CartConvertResponse < TerminalShop::Internal::Type::BaseModel
      # An order from the Terminal shop.
      sig { returns(TerminalShop::Models::OrderAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::OrderAPI, TerminalShop::Internal::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::OrderAPI, TerminalShop::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::OrderAPI}) }
      def to_hash
      end
    end
  end
end
