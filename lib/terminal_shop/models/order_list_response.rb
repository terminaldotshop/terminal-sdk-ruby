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

      # @!parse
      #   # @param data [Array<TerminalShop::Models::OrderAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
