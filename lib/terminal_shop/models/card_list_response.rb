# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#list
    class CardListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of cards associated with the user.
      #
      #   @return [Array<TerminalShop::Models::CardAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::CardAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::CardAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
