# typed: strong

module Terminal
  module Models
    class AddressCreateParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

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
          city: String,
          country: String,
          name: String,
          street1: String,
          zip: String,
          phone: String,
          province: String,
          street2: String,
          request_options: T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        city:,
        country:,
        name:,
        street1:,
        zip:,
        phone: nil,
        province: nil,
        street2: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: String,
            name: String,
            street1: String,
            zip: String,
            phone: String,
            province: String,
            street2: String,
            request_options: Terminal::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
