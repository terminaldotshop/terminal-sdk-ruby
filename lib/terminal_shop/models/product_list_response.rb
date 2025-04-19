# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Product#list
    class ProductListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   A list of products.
      #
      #   @return [Array<TerminalShop::Models::ProductAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::ProductAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::ProductAPI>]
    end
  end
end
