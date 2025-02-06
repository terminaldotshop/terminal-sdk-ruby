# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # order_get_response => {
    #   data: TerminalShop::Models::OrderAPI
    # }
    # ```
    class OrderGetResponse < TerminalShop::BaseModel
      # @!attribute data
      #   An order from the Terminal shop.
      #
      #   @return [TerminalShop::Models::OrderAPI]
      required :data, -> { TerminalShop::Models::OrderAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::OrderAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
