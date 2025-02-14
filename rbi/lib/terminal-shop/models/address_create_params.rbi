# typed: strong

module TerminalShop
  module Models
    class AddressCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def city
      end

      sig { params(_: String).returns(String) }
      def city=(_)
      end

      sig { returns(String) }
      def country
      end

      sig { params(_: String).returns(String) }
      def country=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def street1
      end

      sig { params(_: String).returns(String) }
      def street1=(_)
      end

      sig { returns(String) }
      def zip
      end

      sig { params(_: String).returns(String) }
      def zip=(_)
      end

      sig { returns(T.nilable(String)) }
      def phone
      end

      sig { params(_: String).returns(String) }
      def phone=(_)
      end

      sig { returns(T.nilable(String)) }
      def province
      end

      sig { params(_: String).returns(String) }
      def province=(_)
      end

      sig { returns(T.nilable(String)) }
      def street2
      end

      sig { params(_: String).returns(String) }
      def street2=(_)
      end

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
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
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
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
