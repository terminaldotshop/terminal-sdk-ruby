# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Product#get
    class ProductGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Product sold in the Terminal shop.
      #
      #   @return [TerminalShop::Models::ProductAPI]
      required :data, -> { TerminalShop::Models::ProductAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::ProductAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
