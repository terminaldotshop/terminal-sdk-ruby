# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#collect
    class CardCollectResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   URL for collecting card information.
      #
      #   @return [TerminalShop::Models::CardCollectResponse::Data]
      required :data, -> { TerminalShop::Models::CardCollectResponse::Data }

      # @!parse
      #   # @param data [TerminalShop::Models::CardCollectResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void

      # @see TerminalShop::Models::CardCollectResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
        # @!attribute url
        #   Temporary URL that allows a user to enter credit card details over https at
        #   terminal.shop.
        #
        #   @return [String]
        required :url, String

        # @!parse
        #   # URL for collecting card information.
        #   #
        #   # @param url [String]
        #   #
        #   def initialize(url:, **) = super

        # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
      end
    end
  end
end
