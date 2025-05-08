# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Product#get
    class ProductGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Product sold in the Terminal shop.
      #
      #   @return [TerminalShop::ProductAPI]
      required :data, -> { TerminalShop::ProductAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::ProductAPI] Product sold in the Terminal shop.
    end
  end
end
