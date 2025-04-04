# frozen_string_literal: true

module TerminalShop
  module Models
    class CartSetAddressParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute address_id
      #   ID of the shipping address to set for the current user's cart.
      #
      #   @return [String]
      required :address_id, String, api_name: :addressID

      # @!parse
      #   # @param address_id [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address_id:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
