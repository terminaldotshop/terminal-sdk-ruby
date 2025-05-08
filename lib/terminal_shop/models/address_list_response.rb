# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#list
    class AddressListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Shipping addresses.
      #
      #   @return [Array<TerminalShop::AddressAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::AddressAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::AddressAPI>] Shipping addresses.
    end
  end
end
