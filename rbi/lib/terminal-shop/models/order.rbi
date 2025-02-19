# typed: strong

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(TerminalShop::Models::OrderAPI::Amount) }
      def amount
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Amount).returns(TerminalShop::Models::OrderAPI::Amount) }
      def amount=(_)
      end

      sig { returns(T::Array[TerminalShop::Models::OrderAPI::Item]) }
      def items
      end

      sig do
        params(_: T::Array[TerminalShop::Models::OrderAPI::Item])
          .returns(T::Array[TerminalShop::Models::OrderAPI::Item])
      end
      def items=(_)
      end

      sig { returns(TerminalShop::Models::OrderAPI::Shipping) }
      def shipping
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Shipping).returns(TerminalShop::Models::OrderAPI::Shipping) }
      def shipping=(_)
      end

      sig { returns(TerminalShop::Models::OrderAPI::Tracking) }
      def tracking
      end

      sig { params(_: TerminalShop::Models::OrderAPI::Tracking).returns(TerminalShop::Models::OrderAPI::Tracking) }
      def tracking=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def index
      end

      sig { params(_: Integer).returns(Integer) }
      def index=(_)
      end

      sig do
        params(
          id: String,
          amount: TerminalShop::Models::OrderAPI::Amount,
          items: T::Array[TerminalShop::Models::OrderAPI::Item],
          shipping: TerminalShop::Models::OrderAPI::Shipping,
          tracking: TerminalShop::Models::OrderAPI::Tracking,
          index: Integer
        )
          .void
      end
      def initialize(id:, amount:, items:, shipping:, tracking:, index: nil)
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
        sig { returns(Integer) }
        def shipping
        end

        sig { params(_: Integer).returns(Integer) }
        def shipping=(_)
        end

        sig { returns(Integer) }
        def subtotal
        end

        sig { params(_: Integer).returns(Integer) }
        def subtotal=(_)
        end

        sig { params(shipping: Integer, subtotal: Integer).void }
        def initialize(shipping:, subtotal:)
        end

        sig { override.returns({shipping: Integer, subtotal: Integer}) }
        def to_hash
        end
      end

      class Item < TerminalShop::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(Integer) }
        def amount
        end

        sig { params(_: Integer).returns(Integer) }
        def amount=(_)
        end

        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: String).returns(String) }
        def description=(_)
        end

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
            .void
        end
        def initialize(id:, amount:, quantity:, description: nil, product_variant_id: nil)
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
            street2: String
          )
            .void
        end
        def initialize(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
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
        sig { returns(T.nilable(String)) }
        def number
        end

        sig { params(_: String).returns(String) }
        def number=(_)
        end

        sig { returns(T.nilable(String)) }
        def service
        end

        sig { params(_: String).returns(String) }
        def service=(_)
        end

        sig { returns(T.nilable(String)) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

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
