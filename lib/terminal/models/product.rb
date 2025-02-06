# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # product_api => {
    #   id: String,
    #   description: String,
    #   filters: -> { Terminal::ArrayOf[enum: Terminal::Models::ProductAPI::Filter] === _1 },
    #   name: String,
    #   variants: -> { Terminal::ArrayOf[Terminal::Models::ProductVariant] === _1 },
    #   **_
    # }
    # ```
    class ProductAPI < Terminal::BaseModel
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
      #   @return [Array<Symbol, Terminal::Models::ProductAPI::Filter>]
      required :filters, -> { Terminal::ArrayOf[enum: Terminal::Models::ProductAPI::Filter] }

      # @!attribute name
      #   Name of the product.
      #
      #   @return [String]
      required :name, String

      # @!attribute variants
      #   List of variants of the product.
      #
      #   @return [Array<Terminal::Models::ProductVariant>]
      required :variants, -> { Terminal::ArrayOf[Terminal::Models::ProductVariant] }

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
      #   @return [Symbol, Terminal::Models::ProductAPI::Subscription, nil]
      optional :subscription, enum: -> { Terminal::Models::ProductAPI::Subscription }

      # @!parse
      #   # @return [Symbol, Terminal::Models::ProductAPI::Subscription]
      #   attr_writer :subscription

      # @!attribute [r] tags
      #   Tags for the product.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :tags, Terminal::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :tags

      # @!parse
      #   # Product sold in the Terminal shop.
      #   #
      #   # @param id [String]
      #   # @param description [String]
      #   # @param filters [Array<Symbol, Terminal::Models::ProductAPI::Filter>]
      #   # @param name [String]
      #   # @param variants [Array<Terminal::Models::ProductVariant>]
      #   # @param order [Integer]
      #   # @param subscription [Symbol, Terminal::Models::ProductAPI::Subscription]
      #   # @param tags [Hash{Symbol=>String}]
      #   #
      #   def initialize(id:, description:, filters:, name:, variants:, order: nil, subscription: nil, tags: nil, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

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
      class Filter < Terminal::Enum
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
      class Subscription < Terminal::Enum
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
