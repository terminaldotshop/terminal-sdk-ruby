# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # card_list_response => {
    #   data: -> { TerminalShop::ArrayOf[TerminalShop::Models::CardAPI] === _1 }
    # }
    # ```
    class CardListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   List of cards associated with the user.
      #
      #   @return [Array<TerminalShop::Models::CardAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::CardAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::CardAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
