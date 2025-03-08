# typed: strong

module TerminalShop
  module Models
    class AddressCreateResponse < TerminalShop::BaseModel
      sig { returns(String) }
      def data
      end

      sig { params(_: String).returns(String) }
      def data=(_)
      end

      sig { params(data: String).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: String}) }
      def to_hash
      end
    end
  end
end
