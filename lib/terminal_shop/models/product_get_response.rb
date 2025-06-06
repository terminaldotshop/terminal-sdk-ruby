# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Product#get
    class ProductGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Product sold in the Terminal shop.
      #
      #   @return [TerminalShop::Models::ProductAPI]
      required :data, -> { TerminalShop::ProductAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::ProductAPI] Product sold in the Terminal shop.
    end
  end
end
