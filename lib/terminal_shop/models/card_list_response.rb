# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#list
    class CardListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of cards associated with the user.
      #
      #   @return [Array<TerminalShop::CardAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::CardAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::CardAPI>] List of cards associated with the user.
    end
  end
end
