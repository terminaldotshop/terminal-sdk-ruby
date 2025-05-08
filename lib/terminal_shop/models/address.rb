# frozen_string_literal: true

module TerminalShop
  module Models
    class AddressAPI < TerminalShop::Internal::Type::BaseModel
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

      # @!attribute created
      #   Date the address was created.
      #
      #   @return [String]
      required :created, String

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

      # @!attribute phone
      #   Phone number of the recipient.
      #
      #   @return [String, nil]
      optional :phone, String

      # @!attribute province
      #   Province or state of the address.
      #
      #   @return [String, nil]
      optional :province, String

      # @!attribute street2
      #   Apartment, suite, etc. of the address.
      #
      #   @return [String, nil]
      optional :street2, String

      # @!method initialize(id:, city:, country:, created:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
      #   Some parameter documentations has been truncated, see {TerminalShop::AddressAPI}
      #   for more details.
      #
      #   Physical address associated with a Terminal shop user.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param city [String] City of the address.
      #
      #   @param country [String] ISO 3166-1 alpha-2 country code of the address.
      #
      #   @param created [String] Date the address was created.
      #
      #   @param name [String] The recipient's name.
      #
      #   @param street1 [String] Street of the address.
      #
      #   @param zip [String] Zip code of the address.
      #
      #   @param phone [String] Phone number of the recipient.
      #
      #   @param province [String] Province or state of the address.
      #
      #   @param street2 [String] Apartment, suite, etc. of the address.
    end
  end
end
