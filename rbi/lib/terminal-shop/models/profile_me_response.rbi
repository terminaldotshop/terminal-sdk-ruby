# typed: strong

module TerminalShop
  module Models
    class ProfileMeResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProfileAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::ProfileAPI).returns(TerminalShop::Models::ProfileAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::ProfileAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ProfileAPI}) }
      def to_hash
      end
    end
  end
end
