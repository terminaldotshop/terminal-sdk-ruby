# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # token_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::TokenAPI] === _1 }
    # }
    # ```
    class TokenListResponse < Terminal::BaseModel
      # @!attribute data
      #   List of personal access tokens.
      #
      #   @return [Array<Terminal::Models::TokenAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::TokenAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::TokenAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
