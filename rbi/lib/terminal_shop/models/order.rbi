# typed: strong

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::Internal::Type::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # The subtotal and shipping amounts of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Amount) }
      attr_reader :amount

      sig { params(amount: T.any(TerminalShop::Models::OrderAPI::Amount, TerminalShop::Internal::AnyHash)).void }
      attr_writer :amount

      # Date the order was created.
      sig { returns(String) }
      attr_accessor :created

      # Items in the order.
      sig { returns(T::Array[TerminalShop::Models::OrderAPI::Item]) }
      attr_accessor :items

      # Shipping address of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Shipping) }
      attr_reader :shipping

      sig { params(shipping: T.any(TerminalShop::Models::OrderAPI::Shipping, TerminalShop::Internal::AnyHash)).void }
      attr_writer :shipping

      # Tracking information of the order.
      sig { returns(TerminalShop::Models::OrderAPI::Tracking) }
      attr_reader :tracking

      sig { params(tracking: T.any(TerminalShop::Models::OrderAPI::Tracking, TerminalShop::Internal::AnyHash)).void }
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
          amount: T.any(TerminalShop::Models::OrderAPI::Amount, TerminalShop::Internal::AnyHash),
          created: String,
          items: T::Array[T.any(TerminalShop::Models::OrderAPI::Item, TerminalShop::Internal::AnyHash)],
          shipping: T.any(TerminalShop::Models::OrderAPI::Shipping, TerminalShop::Internal::AnyHash),
          tracking: T.any(TerminalShop::Models::OrderAPI::Tracking, TerminalShop::Internal::AnyHash),
          index: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(id:, amount:, created:, items:, shipping:, tracking:, index: nil); end

      sig do
        override
          .returns(
            {
              id: String,
              amount: TerminalShop::Models::OrderAPI::Amount,
              created: String,
              items: T::Array[TerminalShop::Models::OrderAPI::Item],
              shipping: TerminalShop::Models::OrderAPI::Shipping,
              tracking: TerminalShop::Models::OrderAPI::Tracking,
              index: Integer
            }
          )
      end
      def to_hash; end

      class Amount < TerminalShop::Internal::Type::BaseModel
        # Shipping amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :shipping

        # Subtotal amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :subtotal

        # The subtotal and shipping amounts of the order.
        sig { params(shipping: Integer, subtotal: Integer).returns(T.attached_class) }
        def self.new(shipping:, subtotal:); end

        sig { override.returns({shipping: Integer, subtotal: Integer}) }
        def to_hash; end
      end

      class Item < TerminalShop::Internal::Type::BaseModel
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
        def self.new(id:, amount:, quantity:, description: nil, product_variant_id: nil); end

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
        def to_hash; end
      end

      class Shipping < TerminalShop::Internal::Type::BaseModel
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
        def self.new(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil); end

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
        def to_hash; end
      end

      class Tracking < TerminalShop::Internal::Type::BaseModel
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

        # Current tracking status of the shipment.
        sig { returns(T.nilable(TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: TerminalShop::Models::OrderAPI::Tracking::Status::OrSymbol).void }
        attr_writer :status

        # Additional details about the tracking status.
        sig { returns(T.nilable(String)) }
        attr_reader :status_details

        sig { params(status_details: String).void }
        attr_writer :status_details

        # When the tracking status was last updated.
        sig { returns(T.nilable(String)) }
        attr_reader :status_updated_at

        sig { params(status_updated_at: String).void }
        attr_writer :status_updated_at

        # Tracking URL of the order.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Tracking information of the order.
        sig do
          params(
            number: String,
            service: String,
            status: TerminalShop::Models::OrderAPI::Tracking::Status::OrSymbol,
            status_details: String,
            status_updated_at: String,
            url: String
          )
            .returns(T.attached_class)
        end
        def self.new(
          number: nil,
          service: nil,
          status: nil,
          status_details: nil,
          status_updated_at: nil,
          url: nil
        )
        end

        sig do
          override
            .returns(
              {
                number: String,
                service: String,
                status: TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol,
                status_details: String,
                status_updated_at: String,
                url: String
              }
            )
        end
        def to_hash; end

        # Current tracking status of the shipment.
        module Status
          extend TerminalShop::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, TerminalShop::Models::OrderAPI::Tracking::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRE_TRANSIT = T.let(:PRE_TRANSIT, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)
          TRANSIT = T.let(:TRANSIT, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)
          DELIVERED = T.let(:DELIVERED, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)
          RETURNED = T.let(:RETURNED, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)
          FAILURE = T.let(:FAILURE, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)
          UNKNOWN = T.let(:UNKNOWN, TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol)

          sig { override.returns(T::Array[TerminalShop::Models::OrderAPI::Tracking::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
