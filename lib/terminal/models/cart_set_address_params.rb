# frozen_string_literal: true

module Terminal
  module Models
    class CartSetAddressParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute address_id
      #   ID of the shipping address to set for the current user's cart.
      #
      #   @return [String]
      required :address_id, String, api_name: :addressID

      # @!parse
      #   # @param address_id [String]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address_id:, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
