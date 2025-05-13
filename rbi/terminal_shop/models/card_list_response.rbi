# typed: strong

module TerminalShop
  module Models
    class CardListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::CardListResponse,
            TerminalShop::Internal::AnyHash
          )
        end

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
