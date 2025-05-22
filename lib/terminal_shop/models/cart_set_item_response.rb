# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#set_item
    class CartSetItemResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   The current Terminal shop user's cart.
      #
      #   @return [TerminalShop::Models::CartAPI]
      required :data, -> { TerminalShop::CartAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::CartAPI] The current Terminal shop user's cart.
    end
  end
end
