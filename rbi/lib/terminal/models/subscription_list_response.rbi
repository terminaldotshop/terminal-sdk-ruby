# typed: strong

module Terminal
  module Models
    class SubscriptionListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::SubscriptionAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::SubscriptionAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::SubscriptionAPI]}) }
      def to_hash
      end
    end
  end
end
