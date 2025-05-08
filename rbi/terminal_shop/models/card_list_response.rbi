# typed: strong

module TerminalShop
  module Models
    class CardListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # List of cards associated with the user.
      sig { returns(T::Array[TerminalShop::CardAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::CardAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of cards associated with the user.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::CardAPI] }) }
      def to_hash
      end
    end
  end
end
