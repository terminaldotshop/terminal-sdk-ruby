# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::SubscriptionListResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # List of subscriptions.
      sig { returns(T::Array[TerminalShop::SubscriptionAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::SubscriptionAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of subscriptions.
        data:
      )
      end

      sig do
        override.returns({ data: T::Array[TerminalShop::SubscriptionAPI] })
      end
      def to_hash
      end
    end
  end
end
