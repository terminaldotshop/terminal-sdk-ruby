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
      required :variants, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::ProductVariant] }

      # @!attribute order
      #   Order of the product used when displaying a sorted list of products.
      #
      #   @return [Integer, nil]
      optional :order, Integer

      # @!attribute subscription
      #   Whether the product must be or can be subscribed to.
      #
      #   @return [Symbol, TerminalShop::Models::ProductAPI::Subscription, nil]
      optional :subscription, enum: -> { TerminalShop::ProductAPI::Subscription }

      # @!attribute tags
      #   Tags for the product.
      #
      #   @return [TerminalShop::Models::ProductAPI::Tags, nil]
      optional :tags, -> { TerminalShop::ProductAPI::Tags }

      # @!method initialize(id:, description:, name:, variants:, order: nil, subscription: nil, tags: nil)
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::ProductAPI} for more details.
      #
      #   Product sold in the Terminal shop.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param description [String] Description of the product.
      #
      #   @param name [String] Name of the product.
      #
      #   @param variants [Array<TerminalShop::Models::ProductVariant>] List of variants of the product.
      #
      #   @param order [Integer] Order of the product used when displaying a sorted list of products.
      #
      #   @param subscription [Symbol, TerminalShop::Models::ProductAPI::Subscription] Whether the product must be or can be subscribed to.
      #
      #   @param tags [TerminalShop::Models::ProductAPI::Tags] Tags for the product.

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
        # @!attribute app
        #
        #   @return [String, nil]
        optional :app, String

        # @!attribute color
        #
        #   @return [String, nil]
        optional :color, String

        # @!attribute featured
        #
        #   @return [Boolean, nil]
        optional :featured, TerminalShop::Internal::Type::Boolean

        # @!attribute market_eu
        #
        #   @return [Boolean, nil]
        optional :market_eu, TerminalShop::Internal::Type::Boolean

        # @!attribute market_global
        #
        #   @return [Boolean, nil]
        optional :market_global, TerminalShop::Internal::Type::Boolean

        # @!attribute market_na
        #
        #   @return [Boolean, nil]
        optional :market_na, TerminalShop::Internal::Type::Boolean

        # @!method initialize(app: nil, color: nil, featured: nil, market_eu: nil, market_global: nil, market_na: nil)
        #   Tags for the product.
        #
        #   @param app [String]
        #   @param color [String]
        #   @param featured [Boolean]
        #   @param market_eu [Boolean]
        #   @param market_global [Boolean]
        #   @param market_na [Boolean]
      end
    end
  end
end
