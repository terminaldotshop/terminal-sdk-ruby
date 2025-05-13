# typed: strong

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TerminalShop::OrderAPI, TerminalShop::Internal::AnyHash)
        end

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # The subtotal and shipping amounts of the order.
      sig { returns(TerminalShop::OrderAPI::Amount) }
      attr_reader :amount

      sig { params(amount: TerminalShop::OrderAPI::Amount::OrHash).void }
      attr_writer :amount

      # Date the order was created.
      sig { returns(String) }
      attr_accessor :created

      # Items in the order.
      sig { returns(T::Array[TerminalShop::OrderAPI::Item]) }
      attr_accessor :items

      # Shipping address of the order.
      sig { returns(TerminalShop::OrderAPI::Shipping) }
      attr_reader :shipping

      sig { params(shipping: TerminalShop::OrderAPI::Shipping::OrHash).void }
      attr_writer :shipping

      # Tracking information of the order.
      sig { returns(TerminalShop::OrderAPI::Tracking) }
      attr_reader :tracking

      sig { params(tracking: TerminalShop::OrderAPI::Tracking::OrHash).void }
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
          amount: TerminalShop::OrderAPI::Amount::OrHash,
          created: String,
          items: T::Array[TerminalShop::OrderAPI::Item::OrHash],
          shipping: TerminalShop::OrderAPI::Shipping::OrHash,
          tracking: TerminalShop::OrderAPI::Tracking::OrHash,
          index: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # The subtotal and shipping amounts of the order.
        amount:,
        # Date the order was created.
        created:,
        # Items in the order.
        items:,
        # Shipping address of the order.
        shipping:,
        # Tracking information of the order.
        tracking:,
        # Zero-based index of the order for this user only.
        index: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: TerminalShop::OrderAPI::Amount,
            created: String,
            items: T::Array[TerminalShop::OrderAPI::Item],
            shipping: TerminalShop::OrderAPI::Shipping,
            tracking: TerminalShop::OrderAPI::Tracking,
            index: Integer
          }
        )
      end
      def to_hash
      end

      class Amount < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::OrderAPI::Amount,
              TerminalShop::Internal::AnyHash
            )
          end

        # Shipping amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :shipping

        # Subtotal amount of the order, in cents (USD).
        sig { returns(Integer) }
        attr_accessor :subtotal

        # The subtotal and shipping amounts of the order.
        sig do
          params(shipping: Integer, subtotal: Integer).returns(T.attached_class)
        end
        def self.new(
          # Shipping amount of the order, in cents (USD).
          shipping:,
          # Subtotal amount of the order, in cents (USD).
          subtotal:
        )
        end

        sig { override.returns({ shipping: Integer, subtotal: Integer }) }
        def to_hash
        end
      end

      class Item < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(TerminalShop::OrderAPI::Item, TerminalShop::Internal::AnyHash)
          end

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
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique object identifier. The format and length of IDs may change over time.
          id:,
          # Amount of the item in the order, in cents (USD).
          amount:,
          # Quantity of the item in the order.
          quantity:,
          # Description of the item in the order.
          description: nil,
          # ID of the product variant of the item in the order.
          product_variant_id: nil
        )
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

      class Shipping < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::OrderAPI::Shipping,
              TerminalShop::Internal::AnyHash
            )
          end

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
          ).returns(T.attached_class)
        end
        def self.new(
          # City of the address.
          city:,
          # ISO 3166-1 alpha-2 country code of the address.
          country:,
          # The recipient's name.
          name:,
          # Street of the address.
          street1:,
          # Zip code of the address.
          zip:,
          # Phone number of the recipient.
          phone: nil,
          # Province or state of the address.
          province: nil,
          # Apartment, suite, etc. of the address.
          street2: nil
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
              street2: String
            }
          )
        end
        def to_hash
        end
      end

      class Tracking < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::OrderAPI::Tracking,
              TerminalShop::Internal::AnyHash
            )
          end

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
        sig do
          returns(
            T.nilable(TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: TerminalShop::OrderAPI::Tracking::Status::OrSymbol
          ).void
        end
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
            status: TerminalShop::OrderAPI::Tracking::Status::OrSymbol,
            status_details: String,
            status_updated_at: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Tracking number of the order.
          number: nil,
          # Shipping service of the order.
          service: nil,
          # Current tracking status of the shipment.
          status: nil,
          # Additional details about the tracking status.
          status_details: nil,
          # When the tracking status was last updated.
          status_updated_at: nil,
          # Tracking URL of the order.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              number: String,
              service: String,
              status: TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol,
              status_details: String,
              status_updated_at: String,
              url: String
            }
          )
        end
        def to_hash
        end

        # Current tracking status of the shipment.
        module Status
          extend TerminalShop::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, TerminalShop::OrderAPI::Tracking::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRE_TRANSIT =
            T.let(
              :PRE_TRANSIT,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )
          TRANSIT =
            T.let(
              :TRANSIT,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :DELIVERED,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )
          RETURNED =
            T.let(
              :RETURNED,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )
          FAILURE =
            T.let(
              :FAILURE,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[TerminalShop::OrderAPI::Tracking::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
