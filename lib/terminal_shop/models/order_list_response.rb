# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#list
    class OrderListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of orders.
      #
      #   @return [Array<TerminalShop::Models::OrderAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::OrderAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::OrderAPI>] List of orders.
    end
  end
end
