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

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::CardCollectResponse::Data] URL for collecting card information.

      # @see TerminalShop::Models::CardCollectResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
        # @!attribute url
        #   Temporary URL that allows a user to enter credit card details over https at
        #   terminal.shop.
        #
        #   @return [String]
        required :url, String

        # @!method initialize(url:)
        #   Some parameter documentations has been truncated, see
        #   {TerminalShop::Models::CardCollectResponse::Data} for more details.
        #
        #   URL for collecting card information.
        #
        #   @param url [String] Temporary URL that allows a user to enter credit card details over https at term
        #   ...
      end
    end
  end
end
