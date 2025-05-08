# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#get
    class CartGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   The current Terminal shop user's cart.
      #
      #   @return [TerminalShop::CartAPI]
      required :data, -> { TerminalShop::CartAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::CartAPI] The current Terminal shop user's cart.
    end
  end
end
