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

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::CardAPI>]
    end
  end
end
