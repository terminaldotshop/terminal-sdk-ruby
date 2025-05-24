# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Profile#update
    class ProfileUpdateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   A Terminal shop user's profile. (We have users, btw.)
      #
      #   @return [TerminalShop::Models::ProfileAPI]
      required :data, -> { TerminalShop::ProfileAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::ProfileAPI] A Terminal shop user's profile. (We have users, btw.)
    end
  end
end
