# typed: strong

module TerminalShop
  module Models
    class ProductGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # Product sold in the Terminal shop.
      sig { returns(TerminalShop::ProductAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::ProductAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::ProductAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Product sold in the Terminal shop.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::ProductAPI }) }
      def to_hash
      end
    end
  end
end
