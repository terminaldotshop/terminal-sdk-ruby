# frozen_string_literal: true

module TerminalShop
  module Type
    # @api private
    #
    # A value from among a specified list of options. OpenAPI enum values map to Ruby
    #   values in the SDK as follows:
    #
    #   1. boolean => true | false
    #   2. integer => Integer
    #   3. float => Float
    #   4. string => Symbol
    #
    #   We can therefore convert string values to Symbols, but can't convert other
    #   values safely.
    #
    # @example
    #   # `region` is a `TerminalShop::Models::Region`
    #   case region
    #   when TerminalShop::Models::Region::EU
    #     # ...
    #   when TerminalShop::Models::Region::NA
    #     # ...
    #   else
    #     puts(region)
    #   end
    #
    # @example
    #   case region
    #   in :eu
    #     # ...
    #   in :na
    #     # ...
    #   else
    #     puts(region)
    #   end
    module Enum
      include TerminalShop::Type::Converter

      # All of the valid Symbol values for this enum.
      #
      # @return [Array<NilClass, Boolean, Integer, Float, Symbol>]
      def values = (@values ||= constants.map { const_get(_1) })

      # @api private
      #
      # Guard against thread safety issues by instantiating `@values`.
      private def finalize! = values

      # @param other [Object]
      #
      # @return [Boolean]
      def ===(other) = values.include?(other)

      # @param other [Object]
      #
      # @return [Boolean]
      def ==(other)
        other.is_a?(Module) && other.singleton_class <= TerminalShop::Enum && other.values.to_set == values.to_set
      end

      # @api private
      #
      # Unlike with primitives, `Enum` additionally validates that the value is a member
      #   of the enum.
      #
      # @param value [String, Symbol, Object]
      #
      # @param state [Hash{Symbol=>Object}] .
      #
      #   @option state [Boolean, :strong] :strictness
      #
      #   @option state [Hash{Symbol=>Object}] :exactness
      #
      #   @option state [Integer] :branched
      #
      # @return [Symbol, Object]
      def coerce(value, state:)
        exactness = state.fetch(:exactness)
        val = value.is_a?(String) ? value.to_sym : value

        if values.include?(val)
          exactness[:yes] += 1
          val
        else
          exactness[values.first&.class == val.class ? :maybe : :no] += 1
          value
        end
      end

      # @!parse
      #   # @api private
      #   #
      #   # @param value [Symbol, Object]
      #   #
      #   # @return [Symbol, Object]
      #   def dump(value) = super
    end
  end
end
