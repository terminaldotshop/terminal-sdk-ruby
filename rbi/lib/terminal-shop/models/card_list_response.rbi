# typed: strong

module TerminalShop
  module Models
    class CardListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::CardAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::CardAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::CardAPI]}) }
      def to_hash
      end
    end
  end
end
