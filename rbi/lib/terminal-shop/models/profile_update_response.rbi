# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateResponse < TerminalShop::BaseModel
      # A Terminal shop user's profile. (We have users, btw.)
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
