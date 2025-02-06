# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # card_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::CardAPI] === _1 }
    # }
    # ```
    class CardListResponse < Terminal::BaseModel
      # @!attribute data
      #   List of cards associated with the user.
      #
      #   @return [Array<Terminal::Models::CardAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::CardAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::CardAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
