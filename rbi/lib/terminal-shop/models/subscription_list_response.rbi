# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::BaseModel
      # List of subscriptions.
      sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
      def data
      end

      sig do
        params(_: T::Array[TerminalShop::Models::SubscriptionAPI])
          .returns(T::Array[TerminalShop::Models::SubscriptionAPI])
      end
      def data=(_)
      end

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::SubscriptionAPI]}) }
      def to_hash
      end
    end
  end
end
