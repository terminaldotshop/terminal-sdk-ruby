# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::Internal::Type::BaseModel
      # List of subscriptions.
      sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(
        # List of subscriptions.
        data:
      ); end
      sig { override.returns({data: T::Array[TerminalShop::Models::SubscriptionAPI]}) }
      def to_hash; end
    end
  end
end
