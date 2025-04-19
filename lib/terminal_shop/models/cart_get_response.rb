# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#get
    class CartGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   The current Terminal shop user's cart.
      #
      #   @return [TerminalShop::Models::CartAPI]
      required :data, -> { TerminalShop::Models::CartAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::CartAPI]
    end
  end
end
