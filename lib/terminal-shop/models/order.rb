# frozen_string_literal: true

module TerminalShop
  module Models
    class OrderAPI < TerminalShop::BaseModel
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

      # @!attribute items
      #   Items in the order.
      #
      #   @return [Array<TerminalShop::Models::OrderAPI::Item>]
      required :items, -> { TerminalShop::ArrayOf[TerminalShop::Models::OrderAPI::Item] }

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

      # @!attribute [r] index
      #   Zero-based index of the order for this user only.
      #
      #   @return [Integer, nil]
      optional :index, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :index

      # @!parse
      #   # An order from the Terminal shop.
      #   #
      #   # @param id [String]
      #   # @param amount [TerminalShop::Models::OrderAPI::Amount]
      #   # @param items [Array<TerminalShop::Models::OrderAPI::Item>]
      #   # @param shipping [TerminalShop::Models::OrderAPI::Shipping]
      #   # @param tracking [TerminalShop::Models::OrderAPI::Tracking]
      #   # @param index [Integer]
      #   #
      #   def initialize(id:, amount:, items:, shipping:, tracking:, index: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      class Amount < TerminalShop::BaseModel
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

        # @!parse
        #   # The subtotal and shipping amounts of the order.
        #   #
        #   # @param shipping [Integer]
        #   # @param subtotal [Integer]
        #   #
        #   def initialize(shipping:, subtotal:, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end

      class Item < TerminalShop::BaseModel
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

        # @!attribute [r] description
        #   Description of the item in the order.
        #
        #   @return [String, nil]
        optional :description, String

        # @!parse
        #   # @return [String]
        #   attr_writer :description

        # @!attribute [r] product_variant_id
        #   ID of the product variant of the item in the order.
        #
        #   @return [String, nil]
        optional :product_variant_id, String, api_name: :productVariantID

        # @!parse
        #   # @return [String]
        #   attr_writer :product_variant_id

        # @!parse
        #   # @param id [String]
        #   # @param amount [Integer]
        #   # @param quantity [Integer]
        #   # @param description [String]
        #   # @param product_variant_id [String]
        #   #
        #   def initialize(id:, amount:, quantity:, description: nil, product_variant_id: nil, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end

      class Shipping < TerminalShop::BaseModel
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

        # @!attribute [r] phone
        #   Phone number of the recipient.
        #
        #   @return [String, nil]
        optional :phone, String

        # @!parse
        #   # @return [String]
        #   attr_writer :phone

        # @!attribute [r] province
        #   Province or state of the address.
        #
        #   @return [String, nil]
        optional :province, String

        # @!parse
        #   # @return [String]
        #   attr_writer :province

        # @!attribute [r] street2
        #   Apartment, suite, etc. of the address.
        #
        #   @return [String, nil]
        optional :street2, String

        # @!parse
        #   # @return [String]
        #   attr_writer :street2

        # @!parse
        #   # Shipping address of the order.
        #   #
        #   # @param city [String]
        #   # @param country [String]
        #   # @param name [String]
        #   # @param street1 [String]
        #   # @param zip [String]
        #   # @param phone [String]
        #   # @param province [String]
        #   # @param street2 [String]
        #   #
        #   def initialize(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end

      class Tracking < TerminalShop::BaseModel
        # @!attribute [r] number
        #   Tracking number of the order.
        #
        #   @return [String, nil]
        optional :number, String

        # @!parse
        #   # @return [String]
        #   attr_writer :number

        # @!attribute [r] service
        #   Shipping service of the order.
        #
        #   @return [String, nil]
        optional :service, String

        # @!parse
        #   # @return [String]
        #   attr_writer :service

        # @!attribute [r] url
        #   Tracking URL of the order.
        #
        #   @return [String, nil]
        optional :url, String

        # @!parse
        #   # @return [String]
        #   attr_writer :url

        # @!parse
        #   # Tracking information of the order.
        #   #
        #   # @param number [String]
        #   # @param service [String]
        #   # @param url [String]
        #   #
        #   def initialize(number: nil, service: nil, url: nil, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
