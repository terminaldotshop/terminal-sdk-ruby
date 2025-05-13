# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::ProfileUpdateResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # A Terminal shop user's profile. (We have users, btw.)
      sig { returns(TerminalShop::ProfileAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::ProfileAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::ProfileAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A Terminal shop user's profile. (We have users, btw.)
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::ProfileAPI }) }
      def to_hash
      end
    end
  end
end
