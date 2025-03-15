# typed: strong

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The subtotal and shipping amounts of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Amount) }
      def amount
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Amount).returns(TerminalShop::Models::OrderAPI::Amount) }
      def amount=(_)
      end

      # Items in the order.
      sig { returns(T::Array[TerminalShop::Models::OrderAPI::Item]) }
      def items
      end

      sig do
        params(_: T::Array[TerminalShop::Models::OrderAPI::Item])
          .returns(T::Array[TerminalShop::Models::OrderAPI::Item])
      end
      def items=(_)
      end

      # Shipping address of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Shipping) }
      def shipping
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Shipping).returns(TerminalShop::Models::OrderAPI::Shipping) }
      def shipping=(_)
      end

      # Tracking information of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Tracking) }
      def tracking
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Tracking).returns(TerminalShop::Models::OrderAPI::Tracking) }
      def tracking=(_)
      end

      # Zero-based index of the order for this user only.
      sig { returns(T.nilable(Integer)) }
      def index
      end

      sig { params(_: Integer).returns(Integer) }
      def index=(_)
      end

      # An order from the Terminal shop.
      sig do
        params(
          id: String,
          amount: TerminalShop::Models::OrderAPI::Amount,
          items: T::Array[TerminalShop::Models::OrderAPI::Item],
          shipping: TerminalShop::Models::OrderAPI::Shipping,
          tracking: TerminalShop::Models::OrderAPI::Tracking,
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
        def shipping
        end

        sig { params(_: Integer).returns(Integer) }
        def shipping=(_)
        end

        # Subtotal amount of the order, in cents (USD).
        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

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
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # Amount of the item in the order, in cents (USD).
        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        # Quantity of the item in the order.
        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # Description of the item in the order.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

        # ID of the product variant of the item in the order.
        sig { returns(T.nilable(String)) }
        def product_variant_id
        end

        sig { params(_: String).returns(String) }
        def product_variant_id=(_)
        end

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
        def number
        end

        sig { params(_: String).returns(String) }
        def number=(_)
        end

        # Shipping service of the order.
        sig { returns(T.nilable(String)) }
        def service
        end

        sig { params(_: String).returns(String) }
        def service=(_)
        end

        # Tracking URL of the order.
        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

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
