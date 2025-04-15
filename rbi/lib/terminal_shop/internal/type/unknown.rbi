# typed: strong

module TerminalShop
  module Internal
    module Type
      # @api private
      #
      # When we don't know what to expect for the value.
      class Unknown
        extend TerminalShop::Internal::Type::Converter

        abstract!

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.===(other); end

        sig { params(other: T.anything).returns(T::Boolean) }
        def self.==(other); end

        class << self
          # @api private
          sig do
            override
              .params(value: T.anything, state: TerminalShop::Internal::Type::Converter::CoerceState)
              .returns(T.anything)
          end
          def coerce(value, state:); end

          # @api private
          sig do
            override
              .params(value: T.anything, state: TerminalShop::Internal::Type::Converter::DumpState)
              .returns(T.anything)
          end
          def dump(value, state:); end
        end
      end
    end
  end
end
