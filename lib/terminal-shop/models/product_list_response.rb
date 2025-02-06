# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # product_list_response => {
    #   data: -> { TerminalShop::ArrayOf[TerminalShop::Models::ProductAPI] === _1 }
    # }
    # ```
    class ProductListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   A list of products.
      #
      #   @return [Array<TerminalShop::Models::ProductAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::ProductAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::ProductAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
