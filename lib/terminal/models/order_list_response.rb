# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # order_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::OrderAPI] === _1 }
    # }
    # ```
    class OrderListResponse < Terminal::BaseModel
      # @!attribute data
      #   List of orders.
      #
      #   @return [Array<Terminal::Models::OrderAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::OrderAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::OrderAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
