# frozen_string_literal: true

module TerminalShop
  module Internal
    module Type
      # @api private
      #
      # A value from among a specified list of options. OpenAPI enum values map to Ruby
      # values in the SDK as follows:
      #
      # 1. boolean => true | false
      # 2. integer => Integer
      # 3. float => Float
      # 4. string => Symbol
      #
      # We can therefore convert string values to Symbols, but can't convert other
      # values safely.
      #
      # @example
      #   # `region` is a `TerminalShop::Region`
      #   case region
      #   when TerminalShop::Region::EU
      #     # ...
      #   when TerminalShop::Region::NA
      #     # ...
      #   when TerminalShop::Region::GLOBAL
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
      #   in :global
      #     # ...
      #   else
      #     puts(region)
      #   end
      module Enum
        include TerminalShop::Internal::Type::Converter
        include TerminalShop::Internal::Util::SorbetRuntimeSupport

        # All of the valid Symbol values for this enum.
        #
        # @return [Array<NilClass, Boolean, Integer, Float, Symbol>]
        def values = constants.map { const_get(_1) }

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ===(other) = values.include?(other)

        # @api public
        #
        # @param other [Object]
        #
        # @return [Boolean]
        def ==(other)
          # rubocop:disable Style/CaseEquality
          TerminalShop::Internal::Type::Enum === other && other.values.to_set == values.to_set
          # rubocop:enable Style/CaseEquality
        end

        # @api public
        #
        # @return [Integer]
        def hash = values.to_set.hash

        # @api private
        #
        # Unlike with primitives, `Enum` additionally validates that the value is a member
        # of the enum.
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

        # @!method dump(value, state:)
        #   @api private
        #
        #   @param value [Symbol, Object]
        #
        #   @param state [Hash{Symbol=>Object}] .
        #
        #     @option state [Boolean] :can_retry
        #
        #   @return [Symbol, Object]

        # @api private
        #
        # @return [Object]
        def to_sorbet_type
          case values
          in []
            T.noreturn
          in [value, *_]
            T.all(TerminalShop::Internal::Util::SorbetRuntimeSupport.to_sorbet_type(value), self)
          end
        end

        # @api private
        #
        # @param depth [Integer]
        #
        # @return [String]
        def inspect(depth: 0)
          if depth.positive?
            return is_a?(Module) ? super() : self.class.name
          end

          members = values.map { TerminalShop::Internal::Type::Converter.inspect(_1, depth: depth.succ) }
          prefix = is_a?(Module) ? name : self.class.name

          "#{prefix}[#{members.join(' | ')}]"
        end
      end
    end
  end
end
