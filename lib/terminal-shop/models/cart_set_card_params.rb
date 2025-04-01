# frozen_string_literal: true

module TerminalShop
  module Models
    class CartSetCardParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute card_id
      #   ID of the credit card to set for the current user's cart.
      #
      #   @return [String]
      required :card_id, String, api_name: :cardID

      # @!parse
      #   # @param card_id [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(card_id:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
