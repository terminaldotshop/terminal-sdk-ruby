# frozen_string_literal: true

module TerminalShop
  module Models
    class ProductAPI < TerminalShop::BaseModel
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

      # @!attribute filters
      #
      #   @return [Array<Symbol, TerminalShop::Models::ProductAPI::Filter>]
      required :filters, -> { TerminalShop::ArrayOf[enum: TerminalShop::Models::ProductAPI::Filter] }

      # @!attribute name
      #   Name of the product.
      #
      #   @return [String]
      required :name, String

      # @!attribute variants
      #   List of variants of the product.
      #
      #   @return [Array<TerminalShop::Models::ProductVariant>]
      required :variants, -> { TerminalShop::ArrayOf[TerminalShop::Models::ProductVariant] }

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
      #   @return [Hash{Symbol=>String}, nil]
      optional :tags, TerminalShop::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :tags

      # @!parse
      #   # Product sold in the Terminal shop.
      #   #
      #   # @param id [String]
      #   # @param description [String]
      #   # @param filters [Array<Symbol, TerminalShop::Models::ProductAPI::Filter>]
      #   # @param name [String]
      #   # @param variants [Array<TerminalShop::Models::ProductVariant>]
      #   # @param order [Integer]
      #   # @param subscription [Symbol, TerminalShop::Models::ProductAPI::Subscription]
      #   # @param tags [Hash{Symbol=>String}]
      #   #
      #   def initialize(id:, description:, filters:, name:, variants:, order: nil, subscription: nil, tags: nil, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case filter
      # in :eu
      #   # ...
      # in :na
      #   # ...
      # end
      # ```
      class Filter < TerminalShop::Enum
        EU = :eu
        NA = :na

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      # @abstract
      #
      # Whether the product must be or can be subscribed to.
      #
      # @example
      # ```ruby
      # case subscription
      # in :allowed
      #   # ...
      # in :required
      #   # ...
      # end
      # ```
      class Subscription < TerminalShop::Enum
        ALLOWED = :allowed
        REQUIRED = :required

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
