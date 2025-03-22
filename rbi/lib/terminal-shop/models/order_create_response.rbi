# typed: strong

module TerminalShop
  module Models
    class OrderCreateResponse < TerminalShop::BaseModel
      # Order ID.
      sig { returns(String) }
      attr_accessor :data

      sig { params(data: String).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: String}) }
      def to_hash
      end
    end
  end
end
