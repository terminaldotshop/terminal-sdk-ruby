# frozen_string_literal: true

module TerminalShop
  module Models
    class AddressAPI < TerminalShop::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute city
      #   City of the address.
      #
      #   @return [String]
      required :city, String

      # @!attribute country
      #   ISO 3166-1 alpha-2 country code of the address.
      #
      #   @return [String]
      required :country, String

      # @!attribute name
      #   The recipient's name.
      #
      #   @return [String]
      required :name, String

      # @!attribute street1
      #   Street of the address.
      #
      #   @return [String]
      required :street1, String

      # @!attribute zip
      #   Zip code of the address.
      #
      #   @return [String]
      required :zip, String

      # @!attribute [r] phone
      #   Phone number of the recipient.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!parse
      #   # @return [String]
      #   attr_writer :phone

      # @!attribute [r] province
      #   Province or state of the address.
      #
      #   @return [String, nil]
      optional :province, String

      # @!parse
      #   # @return [String]
      #   attr_writer :province

      # @!attribute [r] street2
      #   Apartment, suite, etc. of the address.
      #
      #   @return [String, nil]
      optional :street2, String

      # @!parse
      #   # @return [String]
      #   attr_writer :street2

      # @!parse
      #   # Physical address associated with a Terminal shop user.
      #   #
      #   # @param id [String]
      #   # @param city [String]
      #   # @param country [String]
      #   # @param name [String]
      #   # @param street1 [String]
      #   # @param zip [String]
      #   # @param phone [String]
      #   # @param province [String]
      #   # @param street2 [String]
      #   #
      #   def initialize(id:, city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
