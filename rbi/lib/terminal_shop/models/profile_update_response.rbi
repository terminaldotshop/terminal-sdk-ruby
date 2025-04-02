# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateResponse < TerminalShop::BaseModel
      # A Terminal shop user's profile. (We have users, btw.)
      sig { returns(TerminalShop::Models::ProfileAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::ProfileAPI, TerminalShop::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ProfileAPI}) }
      def to_hash
      end
    end
  end
end
