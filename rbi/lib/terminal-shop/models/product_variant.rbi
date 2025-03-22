# typed: strong

module TerminalShop
  module Models
    class ProductVariant < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Name of the product variant.
      sig { returns(String) }
      attr_accessor :name

      # Price of the product variant in cents (USD).
      sig { returns(Integer) }
      attr_accessor :price

      # Variant of a product in the Terminal shop.
      sig { params(id: String, name: String, price: Integer).returns(T.attached_class) }
      def self.new(id:, name:, price:)
      end

      sig { override.returns({id: String, name: String, price: Integer}) }
      def to_hash
      end
    end
  end
end
