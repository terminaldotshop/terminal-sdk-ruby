# frozen_string_literal: true

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::Internal::Type::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   Name of the product variant.
      #
      #   @return [String]
      required :name, String

      # @!attribute price
      #   Price of the product variant in cents (USD).
      #
      #   @return [Integer]
      required :price, Integer

      # @!attribute description
      #   Description of the product variant.
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute tags
      #   Tags for the product variant.
      #
      #   @return [TerminalShop::Models::ProductVariant::Tags, nil]
      optional :tags, -> { TerminalShop::ProductVariant::Tags }

      # @!method initialize(id:, name:, price:, description: nil, tags: nil)
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::ProductVariant} for more details.
      #
      #   Variant of a product in the Terminal shop.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param name [String] Name of the product variant.
      #
      #   @param price [Integer] Price of the product variant in cents (USD).
      #
      #   @param description [String] Description of the product variant.
      #
      #   @param tags [TerminalShop::Models::ProductVariant::Tags] Tags for the product variant.

      # @see TerminalShop::Models::ProductVariant#tags
      class Tags < TerminalShop::Internal::Type::BaseModel
        # @!attribute app
        #
        #   @return [String, nil]
        optional :app, String

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

        # @!method initialize(app: nil, market_eu: nil, market_global: nil, market_na: nil)
        #   Tags for the product variant.
        #
        #   @param app [String]
        #   @param market_eu [Boolean]
        #   @param market_global [Boolean]
        #   @param market_na [Boolean]
      end
    end
  end
end
