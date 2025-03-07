# typed: strong

module TerminalShop
  module Models
    class SubscriptionGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::SubscriptionAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::SubscriptionAPI).returns(TerminalShop::Models::SubscriptionAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::SubscriptionAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::SubscriptionAPI}) }
      def to_hash
      end
    end
  end
end
