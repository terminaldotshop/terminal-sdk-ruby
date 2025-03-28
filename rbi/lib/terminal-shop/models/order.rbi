# typed: strong

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # The subtotal and shipping amounts of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Amount) }
      attr_reader :amount

      sig { params(amount: T.any(TerminalShop::Models::OrderAPI::Amount, TerminalShop::Util::AnyHash)).void }
      attr_writer :amount

      # Items in the order.
      sig { returns(T::Array[TerminalShop::Models::OrderAPI::Item]) }
      attr_accessor :items

      # Shipping address of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Shipping) }
      attr_reader :shipping

      sig { params(shipping: T.any(TerminalShop::Models::OrderAPI::Shipping, TerminalShop::Util::AnyHash)).void }
      attr_writer :shipping

      # Tracking information of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Tracking) }
      attr_reader :tracking

      sig { params(tracking: T.any(TerminalShop::Models::OrderAPI::Tracking, TerminalShop::Util::AnyHash)).void }
      attr_writer :tracking

      # Zero-based index of the order for this user only.
      sig { returns(T.nilable(Integer)) }
      attr_reader :index

      sig { params(index: Integer).void }
      attr_writer :index

      # An order from the Terminal shop.
      sig do
        params(
          id: String,
          amount: T.any(TerminalShop::Models::OrderAPI::Amount, TerminalShop::Util::AnyHash),
          items: T::Array[T.any(TerminalShop::Models::OrderAPI::Item, TerminalShop::Util::AnyHash)],
          shipping: T.any(TerminalShop::Models::OrderAPI::Shipping, TerminalShop::Util::AnyHash),
          tracking: T.any(TerminalShop::Models::OrderAPI::Tracking, TerminalShop::Util::AnyHash),
          index: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(id:, amount:, items:, shipping:, tracking:, index: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: TerminalShop::Models::OrderAPI::Amount,
              items: T::Array[TerminalShop::Models::OrderAPI::Item],
              shipping: TerminalShop::Models::OrderAPI::Shipping,
              tracking: TerminalShop::Models::OrderAPI::Tracking,
              index: Integer
            }
          )
      end
      def to_hash
      end

      class Amount < TerminalShop::BaseModel
        # Shipping amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :shipping

        # Subtotal amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :subtotal

        # The subtotal and shipping amounts of the order.
        sig { params(shipping: Integer, subtotal: Integer).returns(T.attached_class) }
        def self.new(shipping:, subtotal:)
        end

        sig { override.returns({shipping: Integer, subtotal: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::BaseModel
        # Unique object identifier. The format and length of IDs may change over time.
        sig { returns(String) }
        attr_accessor :id

        # Amount of the item in the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :amount

        # Quantity of the item in the order.
        sig { returns(Integer) }
        attr_accessor :quantity

        # Description of the item in the order.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # ID of the product variant of the item in the order.
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
          )
            .returns(T.attached_class)
        end
        def self.new(id:, amount:, quantity:, description: nil, product_variant_id: nil)
        end

        sig do
          override
            .returns({
                       id: String,
                       amount: Integer,
                       quantity: Integer,
                       description: String,
                       product_variant_id: String
                     })
        end
        def to_hash
        end
      end

      class Shipping < TerminalShop::BaseModel
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

        # Shipping address of the order.
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
          )
            .returns(T.attached_class)
        end
        def self.new(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
        end

        sig do
          override
            .returns(
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

      class Tracking < TerminalShop::BaseModel
        # Tracking number of the order.
        sig { returns(T.nilable(String)) }
        attr_reader :number

        sig { params(number: String).void }
        attr_writer :number

        # Shipping service of the order.
        sig { returns(T.nilable(String)) }
        attr_reader :service

        sig { params(service: String).void }
        attr_writer :service

        # Tracking URL of the order.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Tracking information of the order.
        sig { params(number: String, service: String, url: String).returns(T.attached_class) }
        def self.new(number: nil, service: nil, url: nil)
        end

        sig { override.returns({number: String, service: String, url: String}) }
        def to_hash
        end
      end
    end
  end
end
