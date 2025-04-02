# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#create
    class OrderCreateResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Order ID.
      #
      #   @return [String]
      required :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
