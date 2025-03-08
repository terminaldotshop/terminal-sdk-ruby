# typed: strong

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Integer) }
      def price
      end

      sig { params(_: Integer).returns(Integer) }
      def price=(_)
      end

      sig { params(id: String, name: String, price: Integer).returns(T.attached_class) }
      def self.new(id:, name:, price:)
      end

      sig { override.returns({id: String, name: String, price: Integer}) }
      def to_hash
      end
    end
  end
end
