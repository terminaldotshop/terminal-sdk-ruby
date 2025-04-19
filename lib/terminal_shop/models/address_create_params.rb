# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#create
    class AddressCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

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

      # @!method initialize(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil, request_options: {})
      #   @param city [String]
      #   @param country [String]
      #   @param name [String]
      #   @param street1 [String]
      #   @param zip [String]
      #   @param phone [String]
      #   @param province [String]
      #   @param street2 [String]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
