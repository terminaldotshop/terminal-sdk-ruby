# typed: strong

module Terminal
  module Models
    class CardListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::CardAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::CardAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::CardAPI]}) }
      def to_hash
      end
    end
  end
end
