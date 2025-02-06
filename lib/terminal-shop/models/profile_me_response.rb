# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # profile_me_response => {
    #   data: TerminalShop::Models::ProfileAPI
    # }
    # ```
    class ProfileMeResponse < TerminalShop::BaseModel
      # @!attribute data
      #   A Terminal shop user's profile. (We have users, btw.)
      #
      #   @return [TerminalShop::Models::ProfileAPI]
      required :data, -> { TerminalShop::Models::ProfileAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::ProfileAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
