# typed: strong

module TerminalShop
  module Internal
    module Type
      # @api private
      #
      # Hash of items of a given type.
      class HashOf
        include TerminalShop::Internal::Type::Converter

        abstract!

        Elem = type_member(:out)

        sig do
          params(
            type_info: T.any(
              TerminalShop::Internal::AnyHash,
              T.proc.returns(TerminalShop::Internal::Type::Converter::Input),
              TerminalShop::Internal::Type::Converter::Input
            ),
            spec: TerminalShop::Internal::AnyHash
          )
            .returns(T.attached_class)
        end
        def self.[](type_info, spec = {}); end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ===(other); end

        sig { params(other: T.anything).returns(T::Boolean) }
        def ==(other); end

        # @api private
        sig do
          override
            .params(
              value: T.any(T::Hash[T.anything, T.anything], T.anything),
              state: TerminalShop::Internal::Type::Converter::CoerceState
            )
            .returns(T.any(TerminalShop::Internal::AnyHash, T.anything))
        end
        def coerce(value, state:); end

        # @api private
        sig do
          override
            .params(
              value: T.any(T::Hash[T.anything, T.anything], T.anything),
              state: TerminalShop::Internal::Type::Converter::DumpState
            )
            .returns(T.any(TerminalShop::Internal::AnyHash, T.anything))
        end
        def dump(value, state:); end

        # @api private
        sig { returns(Elem) }
        protected def item_type; end

        # @api private
        sig { returns(T::Boolean) }
        protected def nilable?; end

        # @api private
        sig do
          params(
            type_info: T.any(
              TerminalShop::Internal::AnyHash,
              T.proc.returns(TerminalShop::Internal::Type::Converter::Input),
              TerminalShop::Internal::Type::Converter::Input
            ),
            spec: TerminalShop::Internal::AnyHash
          )
            .void
        end
        def initialize(type_info, spec = {}); end

        # @api private
        sig { params(depth: Integer).returns(String) }
        def inspect(depth: 0); end
      end
    end
  end
end
