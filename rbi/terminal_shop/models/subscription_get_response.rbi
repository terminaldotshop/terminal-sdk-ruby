# typed: strong

module TerminalShop
  module Models
    class SubscriptionGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::SubscriptionGetResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # Subscription to a Terminal shop product.
      sig { returns(TerminalShop::SubscriptionAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::SubscriptionAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::SubscriptionAPI::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Subscription to a Terminal shop product.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::SubscriptionAPI }) }
      def to_hash
      end
    end
  end
end
