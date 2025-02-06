# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # token_get_response => {
    #   data: Terminal::Models::TokenAPI
    # }
    # ```
    class TokenGetResponse < Terminal::BaseModel
      # @!attribute data
      #   A personal access token used to access the Terminal API. If you leak this,
      #     expect large sums of coffee to be ordered on your credit card.
      #
      #   @return [Terminal::Models::TokenAPI]
      required :data, -> { Terminal::Models::TokenAPI }

      # @!parse
      #   # @param data [Terminal::Models::TokenAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
