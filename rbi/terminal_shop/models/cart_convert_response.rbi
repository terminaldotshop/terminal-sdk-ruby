# typed: strong

module TerminalShop
  module Models
    class CartConvertResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # An order from the Terminal shop.
      sig { returns(TerminalShop::OrderAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::OrderAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::OrderAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # An order from the Terminal shop.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::OrderAPI }) }
      def to_hash
      end
    end
  end
end
