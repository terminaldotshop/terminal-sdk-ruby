# typed: strong

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::AppAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::AppAPI).returns(TerminalShop::Models::AppAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::AppAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppAPI}) }
      def to_hash
      end
    end
  end
end
