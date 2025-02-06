# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # order_list_response => {
    #   data: -> { TerminalShop::ArrayOf[TerminalShop::Models::OrderAPI] === _1 }
    # }
    # ```
    class OrderListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   List of orders.
      #
      #   @return [Array<TerminalShop::Models::OrderAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::OrderAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::OrderAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
