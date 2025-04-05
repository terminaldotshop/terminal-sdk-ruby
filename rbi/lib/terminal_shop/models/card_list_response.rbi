# typed: strong

module TerminalShop
  module Models
    class CardListResponse < TerminalShop::Internal::Type::BaseModel
      # List of cards associated with the user.
      sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::CardAPI, TerminalShop::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::CardAPI]}) }
      def to_hash
      end
    end
  end
end
