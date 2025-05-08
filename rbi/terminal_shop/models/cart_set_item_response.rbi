# typed: strong

module TerminalShop
  module Models
    class CartSetItemResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # The current Terminal shop user's cart.
      sig { returns(TerminalShop::CartAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::CartAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::CartAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # The current Terminal shop user's cart.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::CartAPI }) }
      def to_hash
      end
    end
  end
end
