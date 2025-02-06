# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # card_api => {
    #   id: String,
    #   brand: String,
    #   expiration: Terminal::Models::CardAPI::Expiration,
    #   last4: String
    # }
    # ```
    class CardAPI < Terminal::BaseModel
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

      # @!attribute expiration
      #   Expiration of the card.
      #
      #   @return [Terminal::Models::CardAPI::Expiration]
      required :expiration, -> { Terminal::Models::CardAPI::Expiration }

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
      #   # @param expiration [Terminal::Models::CardAPI::Expiration]
      #   # @param last4 [String]
      #   #
      #   def initialize(id:, brand:, expiration:, last4:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # expiration => {
      #   month: Integer,
      #   year: Integer
      # }
      # ```
      class Expiration < Terminal::BaseModel
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

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
