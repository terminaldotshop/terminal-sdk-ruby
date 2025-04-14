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
      #   @return [TerminalShop::Models::CardAPI::Expiration]
      required :expiration, -> { TerminalShop::Models::CardAPI::Expiration }

      # @!attribute last4
      #   Last four digits of the card.
      #
      #   @return [String]
      required :last4, String

      # @!parse
      #   # Credit card used for payments in the Terminal shop.
      #   #
      #   # @param id [String]
      #   # @param brand [String]
      #   # @param created [String]
      #   # @param expiration [TerminalShop::Models::CardAPI::Expiration]
      #   # @param last4 [String]
      #   #
      #   def initialize(id:, brand:, created:, expiration:, last4:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void

      # @see TerminalShop::Models::CardAPI#expiration
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

        # @!parse
        #   # Expiration of the card.
        #   #
        #   # @param month [Integer]
        #   # @param year [Integer]
        #   #
        #   def initialize(month:, year:, **) = super

        # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
      end
    end
  end
end
