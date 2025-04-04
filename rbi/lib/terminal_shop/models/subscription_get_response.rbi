# typed: strong

module TerminalShop
  module Models
    class SubscriptionGetResponse < TerminalShop::BaseModel
      # Subscription to a Terminal shop product.
      sig { returns(TerminalShop::Models::SubscriptionAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Internal::Util::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::SubscriptionAPI}) }
      def to_hash
      end
    end
  end
end
