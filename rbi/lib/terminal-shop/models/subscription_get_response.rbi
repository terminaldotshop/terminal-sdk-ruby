# typed: strong

module TerminalShop
  module Models
    class SubscriptionGetResponse < TerminalShop::BaseModel
      # Subscription to a Terminal shop product.
      sig { returns(TerminalShop::Models::SubscriptionAPI) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::SubscriptionAPI, TerminalShop::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::SubscriptionAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::SubscriptionAPI}) }
      def to_hash
      end
    end
  end
end
