# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#set_address
    class CartSetAddressParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute address_id
      #   ID of the shipping address to set for the current user's cart.
      #
      #   @return [String]
      required :address_id, String, api_name: :addressID

      # @!method initialize(address_id:, request_options: {})
      #   @param address_id [String]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
