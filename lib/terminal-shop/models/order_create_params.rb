# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#create
    class OrderCreateParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute address_id
      #   Shipping address ID.
      #
      #   @return [String]
      required :address_id, String, api_name: :addressID

      # @!attribute card_id
      #   Card ID.
      #
      #   @return [String]
      required :card_id, String, api_name: :cardID

      # @!attribute variants
      #   Product variants to include in the order, along with their quantities.
      #
      #   @return [Hash{Symbol=>Integer}]
      required :variants, TerminalShop::HashOf[Integer]

      # @!parse
      #   # @param address_id [String]
      #   # @param card_id [String]
      #   # @param variants [Hash{Symbol=>Integer}]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(address_id:, card_id:, variants:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
