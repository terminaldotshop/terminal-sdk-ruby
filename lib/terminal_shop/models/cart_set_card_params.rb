# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Cart#set_card
    class CartSetCardParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute card_id
      #   ID of the credit card to set for the current user's cart.
      #
      #   @return [String]
      required :card_id, String, api_name: :cardID

      # @!method initialize(card_id:, request_options: {})
      #   @param card_id [String] ID of the credit card to set for the current user's cart.
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
