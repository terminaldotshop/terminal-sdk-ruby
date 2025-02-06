# typed: strong

module Terminal
  module Models
    class OrderAPI < Terminal::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Terminal::Models::OrderAPI::Amount) }
      attr_accessor :amount

      sig { returns(T::Array[Terminal::Models::OrderAPI::Item]) }
      attr_accessor :items

      sig { returns(Terminal::Models::OrderAPI::Shipping) }
      attr_accessor :shipping

      sig { returns(Terminal::Models::OrderAPI::Tracking) }
      attr_accessor :tracking

      sig { returns(T.nilable(Integer)) }
      attr_reader :index

      sig { params(index: Integer).void }
      attr_writer :index

      sig do
        params(
          id: String,
          amount: Terminal::Models::OrderAPI::Amount,
          items: T::Array[Terminal::Models::OrderAPI::Item],
          shipping: Terminal::Models::OrderAPI::Shipping,
          tracking: Terminal::Models::OrderAPI::Tracking,
          index: Integer
        ).void
      end
      def initialize(id:, amount:, items:, shipping:, tracking:, index: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Terminal::Models::OrderAPI::Amount,
            items: T::Array[Terminal::Models::OrderAPI::Item],
            shipping: Terminal::Models::OrderAPI::Shipping,
            tracking: Terminal::Models::OrderAPI::Tracking,
            index: Integer
          }
        )
      end
      def to_hash
      end

      class Amount < Terminal::BaseModel
        sig { returns(Integer) }
        attr_accessor :shipping

        sig { returns(Integer) }
        attr_accessor :subtotal

        sig { params(shipping: Integer, subtotal: Integer).void }
        def initialize(shipping:, subtotal:)
        end

        sig { override.returns({shipping: Integer, subtotal: Integer}) }
        def to_hash
        end
      end

      class Item < Terminal::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :amount

        sig { returns(Integer) }
        attr_accessor :quantity

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(String)) }
        attr_reader :product_variant_id

        sig { params(product_variant_id: String).void }
        attr_writer :product_variant_id

        sig do
          params(
            id: String,
            amount: Integer,
            quantity: Integer,
            description: String,
            product_variant_id: String
          ).void
        end
        def initialize(id:, amount:, quantity:, description: nil, product_variant_id: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              amount: Integer,
              quantity: Integer,
              description: String,
              product_variant_id: String
            }
          )
        end
        def to_hash
        end
      end

      class Shipping < Terminal::BaseModel
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
            street2: String
          ).void
        end
        def initialize(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
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
              street2: String
            }
          )
        end
        def to_hash
        end
      end

      class Tracking < Terminal::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :number

        sig { params(number: String).void }
        attr_writer :number

        sig { returns(T.nilable(String)) }
        attr_reader :service

        sig { params(service: String).void }
        attr_writer :service

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { params(number: String, service: String, url: String).void }
        def initialize(number: nil, service: nil, url: nil)
        end

        sig { override.returns({number: String, service: String, url: String}) }
        def to_hash
        end
      end
    end
  end
end
