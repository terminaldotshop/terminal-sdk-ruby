# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # address_list_response => {
    #   data: -> { TerminalShop::ArrayOf[TerminalShop::Models::AddressAPI] === _1 }
    # }
    # ```
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
