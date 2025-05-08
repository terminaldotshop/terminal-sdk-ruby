# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Profile#me
    class ProfileMeResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   A Terminal shop user's profile. (We have users, btw.)
      #
      #   @return [TerminalShop::ProfileAPI]
      required :data, -> { TerminalShop::ProfileAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::ProfileAPI] A Terminal shop user's profile. (We have users, btw.)
    end
  end
end
