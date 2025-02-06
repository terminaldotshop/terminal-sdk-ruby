# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # card_collect_response => {
    #   data: TerminalShop::Models::CardCollectResponse::Data
    # }
    # ```
    class CardCollectResponse < TerminalShop::BaseModel
      # @!attribute data
      #   URL for collecting card information.
      #
      #   @return [TerminalShop::Models::CardCollectResponse::Data]
      required :data, -> { TerminalShop::Models::CardCollectResponse::Data }

      # @!parse
      #   # @param data [TerminalShop::Models::CardCollectResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   url: String
      # }
      # ```
      class Data < TerminalShop::BaseModel
        # @!attribute url
        #   Temporary URL that allows a user to enter credit card details over https at
        #     terminal.shop.
        #
        #   @return [String]
        required :url, String

        # @!parse
        #   # URL for collecting card information.
        #   #
        #   # @param url [String]
        #   #
        #   def initialize(url:, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
