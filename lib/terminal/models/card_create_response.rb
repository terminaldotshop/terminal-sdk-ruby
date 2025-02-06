# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # card_create_response => {
    #   data: String
    # }
    # ```
    class CardCreateResponse < Terminal::BaseModel
      # @!attribute data
      #   ID of the card.
      #
      #   @return [String]
      required :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
