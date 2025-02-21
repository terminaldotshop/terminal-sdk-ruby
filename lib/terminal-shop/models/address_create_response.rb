# frozen_string_literal: true

module TerminalShop
  module Models
    class AddressCreateResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Shipping address ID.
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
