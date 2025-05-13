# typed: strong

module TerminalShop
  module Models
    class CartSetAddressResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::CartSetAddressResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      sig { returns(Symbol) }
      attr_accessor :data

      sig { params(data: Symbol).returns(T.attached_class) }
      def self.new(data: :ok)
      end

      sig { override.returns({ data: Symbol }) }
      def to_hash
      end
    end
  end
end
