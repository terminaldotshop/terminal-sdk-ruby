# typed: strong

module TerminalShop
  module Models
    class CartGetResponse < TerminalShop::BaseModel
      # The current Terminal shop user's cart.
      sig { returns(TerminalShop::Models::CartAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

      sig { params(data: T.any(TerminalShop::Models::CartAPI, TerminalShop::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CartAPI}) }
      def to_hash
      end
    end
  end
end
