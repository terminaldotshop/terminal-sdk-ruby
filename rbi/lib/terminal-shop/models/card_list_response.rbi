# typed: strong

module TerminalShop
  module Models
    class CardListResponse < TerminalShop::BaseModel
      # List of cards associated with the user.
      sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::CardAPI]).returns(T::Array[TerminalShop::Models::CardAPI]) }
      def data=(_)
      end

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::CardAPI, TerminalShop::Util::AnyHash)])
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
