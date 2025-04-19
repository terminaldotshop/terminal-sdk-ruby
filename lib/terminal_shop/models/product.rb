# frozen_string_literal: true

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #   Description of the product.
      #
      #   @return [String]
      required :description, String

      # @!attribute name
      #   Name of the product.
      #
      #   @return [String]
      required :name, String

      # @!attribute variants
      #   List of variants of the product.
      #
      #   @return [Array<TerminalShop::Models::ProductVariant>]
      required :variants, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::ProductVariant] }

      # @!attribute [r] order
      #   Order of the product used when displaying a sorted list of products.
      #
      #   @return [Integer, nil]
      optional :order, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :order

      # @!attribute [r] subscription
      #   Whether the product must be or can be subscribed to.
      #
      #   @return [Symbol, TerminalShop::Models::ProductAPI::Subscription, nil]
      optional :subscription, enum: -> { TerminalShop::Models::ProductAPI::Subscription }

      # @!parse
      #   # @return [Symbol, TerminalShop::Models::ProductAPI::Subscription]
      #   attr_writer :subscription

      # @!attribute [r] tags
      #   Tags for the product.
      #
      #   @return [TerminalShop::Models::ProductAPI::Tags, nil]
      optional :tags, -> { TerminalShop::Models::ProductAPI::Tags }

      # @!parse
      #   # @return [TerminalShop::Models::ProductAPI::Tags]
      #   attr_writer :tags

      # @!method initialize(id:, description:, name:, variants:, order: nil, subscription: nil, tags: nil)
      #   Product sold in the Terminal shop.
      #
      #   @param id [String]
      #   @param description [String]
      #   @param name [String]
      #   @param variants [Array<TerminalShop::Models::ProductVariant>]
      #   @param order [Integer]
      #   @param subscription [Symbol, TerminalShop::Models::ProductAPI::Subscription]
      #   @param tags [TerminalShop::Models::ProductAPI::Tags]

      # Whether the product must be or can be subscribed to.
      #
      # @see TerminalShop::Models::ProductAPI#subscription
      module Subscription
        extend TerminalShop::Internal::Type::Enum

        ALLOWED = :allowed
        REQUIRED = :required

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see TerminalShop::Models::ProductAPI#tags
      class Tags < TerminalShop::Internal::Type::BaseModel
        # @!attribute [r] app
        #
        #   @return [String, nil]
        optional :app, String

        # @!parse
        #   # @return [String]
        #   attr_writer :app

        # @!attribute [r] color
        #
        #   @return [String, nil]
        optional :color, String

        # @!parse
        #   # @return [String]
        #   attr_writer :color

        # @!attribute [r] featured
        #
        #   @return [Boolean, nil]
        optional :featured, TerminalShop::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :featured

        # @!attribute [r] market_eu
        #
        #   @return [Boolean, nil]
        optional :market_eu, TerminalShop::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :market_eu

        # @!attribute [r] market_na
        #
        #   @return [Boolean, nil]
        optional :market_na, TerminalShop::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :market_na

        # @!method initialize(app: nil, color: nil, featured: nil, market_eu: nil, market_na: nil)
        #   Tags for the product.
        #
        #   @param app [String]
        #   @param color [String]
        #   @param featured [Boolean]
        #   @param market_eu [Boolean]
        #   @param market_na [Boolean]
      end
    end
  end
end
