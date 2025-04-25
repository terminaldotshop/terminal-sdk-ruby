# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#convert
    class CartConvertResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   An order from the Terminal shop.
      #
      #   @return [TerminalShop::Models::OrderAPI]
      required :data, -> { TerminalShop::Models::OrderAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::OrderAPI] An order from the Terminal shop.
    end
  end
end
