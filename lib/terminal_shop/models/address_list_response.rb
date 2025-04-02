# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#list
    class AddressListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Shipping addresses.
      #
      #   @return [Array<TerminalShop::Models::AddressAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::AddressAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::AddressAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
