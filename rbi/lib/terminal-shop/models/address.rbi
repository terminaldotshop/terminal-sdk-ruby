# typed: strong

module TerminalShop
  module Models
    class AddressAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # City of the address.
      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      # ISO 3166-1 alpha-2 country code of the address.
      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      # The recipient's name.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Street of the address.
      sig { returns(String) }
      def street1
      end

      sig { params(_: String).returns(String) }
      def street1=(_)
      end

      # Zip code of the address.
      sig { returns(String) }
      def zip
      end

      sig { params(_: String).returns(String) }
      def zip=(_)
      end

      # Phone number of the recipient.
      sig { returns(T.nilable(String)) }
      def phone
      end

      sig { params(_: String).returns(String) }
      def phone=(_)
      end

      # Province or state of the address.
      sig { returns(T.nilable(String)) }
      def province
      end

      sig { params(_: String).returns(String) }
      def province=(_)
      end

      # Apartment, suite, etc. of the address.
      sig { returns(T.nilable(String)) }
      def street2
      end

      sig { params(_: String).returns(String) }
      def street2=(_)
      end

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
      def self.new(id:, city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
      end

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
      def to_hash
      end
    end
  end
end
