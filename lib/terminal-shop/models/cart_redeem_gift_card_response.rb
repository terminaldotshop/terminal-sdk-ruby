# frozen_string_literal: true

module TerminalShop
  module Models
    class CartRedeemGiftCardResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Gift card redemption result
      #
      #   @return [TerminalShop::Models::CartRedeemGiftCardResponse::Data]
      required :data, -> { TerminalShop::Models::CartRedeemGiftCardResponse::Data }

      # @!parse
      #   # @param data [TerminalShop::Models::CartRedeemGiftCardResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      class Data < TerminalShop::BaseModel
        # @!attribute applied_amount
        #
        #   @return [Integer]
        required :applied_amount, Integer, api_name: :appliedAmount

        # @!attribute gift_card_id
        #
        #   @return [String]
        required :gift_card_id, String, api_name: :giftCardID

        # @!attribute remaining_balance
        #
        #   @return [Integer]
        required :remaining_balance, Integer, api_name: :remainingBalance

        # @!parse
        #   # Gift card redemption result
        #   #
        #   # @param applied_amount [Integer]
        #   # @param gift_card_id [String]
        #   # @param remaining_balance [Integer]
        #   #
        #   def initialize(applied_amount:, gift_card_id:, remaining_balance:, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
