# typed: strong

module TerminalShop
  module Models
    class AddressAPI < TerminalShop::Internal::Type::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # City of the address.
      sig { returns(String) }
      attr_accessor :city

      # ISO 3166-1 alpha-2 country code of the address.
      sig { returns(String) }
      attr_accessor :country

      # The recipient's name.
      sig { returns(String) }
      attr_accessor :name

      # Street of the address.
      sig { returns(String) }
      attr_accessor :street1

      # Zip code of the address.
      sig { returns(String) }
      attr_accessor :zip

      # Phone number of the recipient.
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # Province or state of the address.
      sig { returns(T.nilable(String)) }
      attr_reader :province

      sig { params(province: String).void }
      attr_writer :province

      # Apartment, suite, etc. of the address.
      sig { returns(T.nilable(String)) }
      attr_reader :street2

      sig { params(street2: String).void }
      attr_writer :street2

      # Physical address associated with a Terminal shop user.
      sig do
        params(
          id: String,
          city: String,
          country: String,
          name: String,
          street1: String,
          zip: String,
          phone: String,
          province: String,
          street2: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              city: String,
              country: String,
              name: String,
              street1: String,
              zip: String,
              phone: String,
              province: String,
              street2: String
            }
          )
      end
      def to_hash; end
    end
  end
end
