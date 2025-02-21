# frozen_string_literal: true

module TerminalShop
  module Models
    class CartGetResponse < TerminalShop::BaseModel
      # @!attribute data
      #   The current Terminal shop user's cart.
      #
      #   @return [TerminalShop::Models::CartAPI]
      required :data, -> { TerminalShop::Models::CartAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::CartAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
