# typed: strong

module TerminalShop
  module Models
    class OrderCreateResponse < TerminalShop::BaseModel
      sig { returns(String) }
      def data
      end

      sig { params(_: String).returns(String) }
      def data=(_)
      end

      sig { params(data: String).void }
      def initialize(data:)
      end

      sig { override.returns({data: String}) }
      def to_hash
      end
    end
  end
end
