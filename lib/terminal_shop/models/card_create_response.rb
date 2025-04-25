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

      # @!method initialize(data:)
      #   @param data [String] ID of the card.
    end
  end
end
