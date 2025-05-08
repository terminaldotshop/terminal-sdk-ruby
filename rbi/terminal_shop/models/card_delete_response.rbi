# typed: strong

module TerminalShop
  module Models
    class CardDeleteResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
