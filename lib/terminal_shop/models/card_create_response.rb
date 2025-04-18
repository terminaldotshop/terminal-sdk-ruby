# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#create
    class CardCreateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   ID of the card.
      #
      #   @return [String]
      required :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
