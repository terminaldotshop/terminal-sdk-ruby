# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # card_create_response => {
    #   data: String
    # }
    # ```
    class CardCreateResponse < TerminalShop::BaseModel
      # @!attribute data
      #   ID of the card.
      #
      #   @return [String]
      required :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
