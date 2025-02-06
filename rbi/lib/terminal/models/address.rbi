# typed: strong

module Terminal
  module Models
    class AddressAPI < Terminal::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :city

      sig { returns(String) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :street1

      sig { returns(String) }
      attr_accessor :zip

      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      sig { returns(T.nilable(String)) }
      attr_reader :province

      sig { params(province: String).void }
      attr_writer :province

      sig { returns(T.nilable(String)) }
      attr_reader :street2

      sig { params(street2: String).void }
      attr_writer :street2

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
        ).void
      end
      def initialize(id:, city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
      end

      sig do
        override.returns(
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
      def to_hash
      end
    end
  end
end
