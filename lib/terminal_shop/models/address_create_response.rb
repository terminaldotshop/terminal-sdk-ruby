# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#create
    class AddressCreateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Shipping address ID.
      #
      #   @return [String]
      required :data, String

      # @!method initialize(data:)
      #   @param data [String]
    end
  end
end
