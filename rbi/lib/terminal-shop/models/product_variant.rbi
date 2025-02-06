# typed: strong

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Integer) }
      attr_accessor :price

      sig { params(id: String, name: String, price: Integer).void }
      def initialize(id:, name:, price:)
      end

      sig { override.returns({id: String, name: String, price: Integer}) }
      def to_hash
      end
    end
  end
end
