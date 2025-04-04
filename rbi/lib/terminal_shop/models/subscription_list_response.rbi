# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::BaseModel
      # List of subscriptions.
      sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
      attr_accessor :data

      sig do
        params(
          data: T::Array[T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Internal::Util::AnyHash)]
        )
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
