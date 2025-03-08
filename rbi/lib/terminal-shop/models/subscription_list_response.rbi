# typed: strong

module TerminalShop
  module Models
    class SubscriptionListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::SubscriptionAPI]) }
      def data
      end

      sig do
        params(_: T::Array[TerminalShop::Models::SubscriptionAPI])
          .returns(T::Array[TerminalShop::Models::SubscriptionAPI])
      end
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::SubscriptionAPI]).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::SubscriptionAPI]}) }
      def to_hash
      end
    end
  end
end
