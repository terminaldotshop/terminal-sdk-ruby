# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#list
    class AddressListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Shipping addresses.
      #
      #   @return [Array<TerminalShop::Models::AddressAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::AddressAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::AddressAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
