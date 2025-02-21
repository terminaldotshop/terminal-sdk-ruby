# frozen_string_literal: true

module TerminalShop
  module Models
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
