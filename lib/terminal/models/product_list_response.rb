# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # product_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::ProductAPI] === _1 }
    # }
    # ```
    class ProductListResponse < Terminal::BaseModel
      # @!attribute data
      #   A list of products.
      #
      #   @return [Array<Terminal::Models::ProductAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::ProductAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::ProductAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
