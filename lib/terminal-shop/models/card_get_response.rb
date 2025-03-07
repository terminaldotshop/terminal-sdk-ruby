# frozen_string_literal: true

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Credit card used for payments in the Terminal shop.
      #
      #   @return [TerminalShop::Models::CardAPI]
      required :data, -> { TerminalShop::Models::CardAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::CardAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
