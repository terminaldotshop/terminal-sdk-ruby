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

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::AddressAPI>] Shipping addresses.
    end
  end
end
