# typed: strong

module TerminalShop
  module Models
    class SubscriptionCreateResponse < TerminalShop::BaseModel
      sig { returns(Symbol) }
      def data
      end

      sig { params(_: Symbol).returns(Symbol) }
      def data=(_)
      end

      sig { params(data: Symbol).returns(T.attached_class) }
      def self.new(data: :ok)
      end

      sig { override.returns({data: Symbol}) }
      def to_hash
      end
    end
  end
end
