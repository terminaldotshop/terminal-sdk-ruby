# frozen_string_literal: true

module TerminalShop
  module Models
    class CartSetAddressResponse < TerminalShop::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!parse
      #   # @param data [Symbol, :ok]
      #   #
      #   def initialize(data: :ok, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
