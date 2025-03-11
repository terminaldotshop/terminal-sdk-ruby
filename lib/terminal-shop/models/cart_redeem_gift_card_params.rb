# frozen_string_literal: true

module TerminalShop
  module Models
    class CartRedeemGiftCardParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute gift_card_id
      #
      #   @return [String]
      required :gift_card_id, String, api_name: :giftCardID

      # @!parse
      #   # @param gift_card_id [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(gift_card_id:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
