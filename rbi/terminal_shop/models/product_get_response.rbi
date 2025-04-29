# typed: strong

module TerminalShop
  module Models
    class ProductGetResponse < TerminalShop::Internal::Type::BaseModel
      # Product sold in the Terminal shop.
      sig { returns(TerminalShop::Models::ProductAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::ProductAPI, TerminalShop::Internal::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::ProductAPI, TerminalShop::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(
        # Product sold in the Terminal shop.
        data:
      ); end
      sig { override.returns({data: TerminalShop::Models::ProductAPI}) }
      def to_hash; end
    end
  end
end
