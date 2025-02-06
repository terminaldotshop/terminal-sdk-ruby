# frozen_string_literal: true

module Terminal
  module Models
    class CartSetCardParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute card_id
      #   ID of the credit card to set for the current user's cart.
      #
      #   @return [String]
      required :card_id, String, api_name: :cardID

      # @!parse
      #   # @param card_id [String]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(card_id:, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
