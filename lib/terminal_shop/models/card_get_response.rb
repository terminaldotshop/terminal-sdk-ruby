# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#get
    class CardGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Credit card used for payments in the Terminal shop.
      #
      #   @return [TerminalShop::Models::CardAPI]
      required :data, -> { TerminalShop::Models::CardAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::CardAPI] Credit card used for payments in the Terminal shop.
    end
  end
end
