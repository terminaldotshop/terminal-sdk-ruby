# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#get
    class OrderGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   An order from the Terminal shop.
      #
      #   @return [TerminalShop::OrderAPI]
      required :data, -> { TerminalShop::OrderAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::OrderAPI] An order from the Terminal shop.
    end
  end
end
