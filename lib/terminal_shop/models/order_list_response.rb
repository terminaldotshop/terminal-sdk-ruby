# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#list
    class OrderListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of orders.
      #
      #   @return [Array<TerminalShop::OrderAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::OrderAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::OrderAPI>] List of orders.
    end
  end
end
