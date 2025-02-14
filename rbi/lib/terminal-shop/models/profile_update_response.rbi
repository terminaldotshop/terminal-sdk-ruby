# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProfileAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::ProfileAPI).returns(TerminalShop::Models::ProfileAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::ProfileAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ProfileAPI}) }
      def to_hash
      end
    end
  end
end
