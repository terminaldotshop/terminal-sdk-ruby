# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # cart_get_response => {
    #   data: Terminal::Models::CartAPI
    # }
    # ```
    class CartGetResponse < Terminal::BaseModel
      # @!attribute data
      #   The current Terminal shop user's cart.
      #
      #   @return [Terminal::Models::CartAPI]
      required :data, -> { Terminal::Models::CartAPI }

      # @!parse
      #   # @param data [Terminal::Models::CartAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
