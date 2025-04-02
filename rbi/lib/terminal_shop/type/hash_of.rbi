# typed: strong

module TerminalShop
  module Type
    # @api private
    #
    # Hash of items of a given type.
    class HashOf
      include TerminalShop::Type::Converter

      abstract!
      final!

      Elem = type_member(:out)

      sig(:final) do
        params(
          type_info: T.any(
            TerminalShop::Util::AnyHash,
            T.proc.returns(TerminalShop::Type::Converter::Input),
            TerminalShop::Type::Converter::Input
          ),
          spec: TerminalShop::Util::AnyHash
        )
          .returns(T.attached_class)
      end
      def self.[](type_info, spec = {})
      end

      sig(:final) { params(other: T.anything).returns(T::Boolean) }
      def ===(other)
      end

      sig(:final) { params(other: T.anything).returns(T::Boolean) }
      def ==(other)
      end

      # @api private
      sig(:final) do
        override
          .params(
            value: T.any(T::Hash[T.anything, T.anything], T.anything),
            state: TerminalShop::Type::Converter::State
          )
          .returns(T.any(TerminalShop::Util::AnyHash, T.anything))
      end
      def coerce(value, state:)
      end

      # @api private
      sig(:final) do
        override
          .params(value: T.any(T::Hash[T.anything, T.anything], T.anything))
          .returns(T.any(TerminalShop::Util::AnyHash, T.anything))
      end
      def dump(value)
      end

      # @api private
      sig(:final) { returns(Elem) }
      protected def item_type
      end

      # @api private
      sig(:final) { returns(T::Boolean) }
      protected def nilable?
      end

      # @api private
      sig(:final) do
        params(
          type_info: T.any(
            TerminalShop::Util::AnyHash,
            T.proc.returns(TerminalShop::Type::Converter::Input),
            TerminalShop::Type::Converter::Input
          ),
          spec: TerminalShop::Util::AnyHash
        )
          .void
      end
      def initialize(type_info, spec = {})
      end
    end
  end
end
