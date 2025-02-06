# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # order_get_response => {
    #   data: Terminal::Models::OrderAPI
    # }
    # ```
    class OrderGetResponse < Terminal::BaseModel
      # @!attribute data
      #   An order from the Terminal shop.
      #
      #   @return [Terminal::Models::OrderAPI]
      required :data, -> { Terminal::Models::OrderAPI }

      # @!parse
      #   # @param data [Terminal::Models::OrderAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
