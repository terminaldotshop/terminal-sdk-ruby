# frozen_string_literal: true

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   The subtotal and shipping amounts of the order.
      #
      #   @return [TerminalShop::Models::OrderAPI::Amount]
      required :amount, -> { TerminalShop::Models::OrderAPI::Amount }

      # @!attribute created
      #   Date the order was created.
      #
      #   @return [String]
      required :created, String

      # @!attribute items
      #   Items in the order.
      #
      #   @return [Array<TerminalShop::Models::OrderAPI::Item>]
      required :items, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::OrderAPI::Item] }

      # @!attribute shipping
      #   Shipping address of the order.
      #
      #   @return [TerminalShop::Models::OrderAPI::Shipping]
      required :shipping, -> { TerminalShop::Models::OrderAPI::Shipping }

      # @!attribute tracking
      #   Tracking information of the order.
      #
      #   @return [TerminalShop::Models::OrderAPI::Tracking]
      required :tracking, -> { TerminalShop::Models::OrderAPI::Tracking }

      # @!attribute index
      #   Zero-based index of the order for this user only.
      #
      #   @return [Integer, nil]
      optional :index, Integer

      # @!method initialize(id:, amount:, created:, items:, shipping:, tracking:, index: nil)
      #   An order from the Terminal shop.
      #
      #   @param id [String]
      #   @param amount [TerminalShop::Models::OrderAPI::Amount]
      #   @param created [String]
      #   @param items [Array<TerminalShop::Models::OrderAPI::Item>]
      #   @param shipping [TerminalShop::Models::OrderAPI::Shipping]
      #   @param tracking [TerminalShop::Models::OrderAPI::Tracking]
      #   @param index [Integer]

      # @see TerminalShop::Models::OrderAPI#amount
      class Amount < TerminalShop::Internal::Type::BaseModel
        # @!attribute shipping
        #   Shipping amount of the order, in cents (USD).
        #
        #   @return [Integer]
        required :shipping, Integer

        # @!attribute subtotal
        #   Subtotal amount of the order, in cents (USD).
        #
        #   @return [Integer]
        required :subtotal, Integer

        # @!method initialize(shipping:, subtotal:)
        #   The subtotal and shipping amounts of the order.
        #
        #   @param shipping [Integer]
        #   @param subtotal [Integer]
      end

      class Item < TerminalShop::Internal::Type::BaseModel
        # @!attribute id
        #   Unique object identifier. The format and length of IDs may change over time.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Amount of the item in the order, in cents (USD).
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute quantity
        #   Quantity of the item in the order.
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!attribute description
        #   Description of the item in the order.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute product_variant_id
        #   ID of the product variant of the item in the order.
        #
        #   @return [String, nil]
        optional :product_variant_id, String, api_name: :productVariantID

        # @!method initialize(id:, amount:, quantity:, description: nil, product_variant_id: nil)
        #   @param id [String]
        #   @param amount [Integer]
        #   @param quantity [Integer]
        #   @param description [String]
        #   @param product_variant_id [String]
      end

      # @see TerminalShop::Models::OrderAPI#shipping
      class Shipping < TerminalShop::Internal::Type::BaseModel
        # @!attribute city
        #   City of the address.
        #
        #   @return [String]
        required :city, String

        # @!attribute country
        #   ISO 3166-1 alpha-2 country code of the address.
        #
        #   @return [String]
        required :country, String

        # @!attribute name
        #   The recipient's name.
        #
        #   @return [String]
        required :name, String

        # @!attribute street1
        #   Street of the address.
        #
        #   @return [String]
        required :street1, String

        # @!attribute zip
        #   Zip code of the address.
        #
        #   @return [String]
        required :zip, String

        # @!attribute phone
        #   Phone number of the recipient.
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute province
        #   Province or state of the address.
        #
        #   @return [String, nil]
        optional :province, String

        # @!attribute street2
        #   Apartment, suite, etc. of the address.
        #
        #   @return [String, nil]
        optional :street2, String

        # @!method initialize(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil)
        #   Shipping address of the order.
        #
        #   @param city [String]
        #   @param country [String]
        #   @param name [String]
        #   @param street1 [String]
        #   @param zip [String]
        #   @param phone [String]
        #   @param province [String]
        #   @param street2 [String]
      end

      # @see TerminalShop::Models::OrderAPI#tracking
      class Tracking < TerminalShop::Internal::Type::BaseModel
        # @!attribute number
        #   Tracking number of the order.
        #
        #   @return [String, nil]
        optional :number, String

        # @!attribute service
        #   Shipping service of the order.
        #
        #   @return [String, nil]
        optional :service, String

        # @!attribute status
        #   Current tracking status of the shipment.
        #
        #   @return [Symbol, TerminalShop::Models::OrderAPI::Tracking::Status, nil]
        optional :status, enum: -> { TerminalShop::Models::OrderAPI::Tracking::Status }

        # @!attribute status_details
        #   Additional details about the tracking status.
        #
        #   @return [String, nil]
        optional :status_details, String, api_name: :statusDetails

        # @!attribute status_updated_at
        #   When the tracking status was last updated.
        #
        #   @return [String, nil]
        optional :status_updated_at, String, api_name: :statusUpdatedAt

        # @!attribute url
        #   Tracking URL of the order.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(number: nil, service: nil, status: nil, status_details: nil, status_updated_at: nil, url: nil)
        #   Tracking information of the order.
        #
        #   @param number [String]
        #   @param service [String]
        #   @param status [Symbol, TerminalShop::Models::OrderAPI::Tracking::Status]
        #   @param status_details [String]
        #   @param status_updated_at [String]
        #   @param url [String]

        # Current tracking status of the shipment.
        #
        # @see TerminalShop::Models::OrderAPI::Tracking#status
        module Status
          extend TerminalShop::Internal::Type::Enum

          PRE_TRANSIT = :PRE_TRANSIT
          TRANSIT = :TRANSIT
          DELIVERED = :DELIVERED
          RETURNED = :RETURNED
          FAILURE = :FAILURE
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
