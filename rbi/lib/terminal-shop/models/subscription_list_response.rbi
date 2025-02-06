# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::SubscriptionAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::SubscriptionAPI]}) }
      def to_hash
      end
    end
  end
end
