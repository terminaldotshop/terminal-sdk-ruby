# typed: strong

module TerminalShop
  module Models
    class AddressCreateResponse < TerminalShop::Internal::Type::BaseModel
      # Shipping address ID.
      sig { returns(String) }
      attr_accessor :data

      sig { params(data: String).returns(T.attached_class) }
      def self.new(data:); end

      sig { override.returns({data: String}) }
      def to_hash; end
    end
  end
end
