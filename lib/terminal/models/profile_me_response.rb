# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # profile_me_response => {
    #   data: Terminal::Models::ProfileAPI
    # }
    # ```
    class ProfileMeResponse < Terminal::BaseModel
      # @!attribute data
      #   A Terminal shop user's profile. (We have users, btw.)
      #
      #   @return [Terminal::Models::ProfileAPI]
      required :data, -> { Terminal::Models::ProfileAPI }

      # @!parse
      #   # @param data [Terminal::Models::ProfileAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
