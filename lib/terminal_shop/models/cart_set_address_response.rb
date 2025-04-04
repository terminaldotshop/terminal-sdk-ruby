# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#set_address
    class CartSetAddressResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!parse
      #   # @param data [Symbol, :ok]
      #   #
      #   def initialize(data: :ok, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
