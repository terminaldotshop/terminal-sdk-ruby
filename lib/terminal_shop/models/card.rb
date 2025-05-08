# frozen_string_literal: true

module TerminalShop
  module Models
    class CardAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute brand
      #   Brand of the card.
      #
      #   @return [String]
      required :brand, String

      # @!attribute created
      #   Date the card was created.
      #
      #   @return [String]
      required :created, String

      # @!attribute expiration
      #   Expiration of the card.
      #
      #   @return [TerminalShop::CardAPI::Expiration]
      required :expiration, -> { TerminalShop::CardAPI::Expiration }

      # @!attribute last4
      #   Last four digits of the card.
      #
      #   @return [String]
      required :last4, String

      # @!method initialize(id:, brand:, created:, expiration:, last4:)
      #   Some parameter documentations has been truncated, see {TerminalShop::CardAPI}
      #   for more details.
      #
      #   Credit card used for payments in the Terminal shop.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param brand [String] Brand of the card.
      #
      #   @param created [String] Date the card was created.
      #
      #   @param expiration [TerminalShop::CardAPI::Expiration] Expiration of the card.
      #
      #   @param last4 [String] Last four digits of the card.

      # @see TerminalShop::CardAPI#expiration
      class Expiration < TerminalShop::Internal::Type::BaseModel
        # @!attribute month
        #   Expiration month of the card.
        #
        #   @return [Integer]
        required :month, Integer

        # @!attribute year
        #   Expiration year of the card.
        #
        #   @return [Integer]
        required :year, Integer

        # @!method initialize(month:, year:)
        #   Expiration of the card.
        #
        #   @param month [Integer] Expiration month of the card.
        #
        #   @param year [Integer] Expiration year of the card.
      end
    end
  end
end
