# typed: strong

module TerminalShop
  module Models
    class ProductListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::ProductListResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # A list of products.
      sig { returns(T::Array[TerminalShop::ProductAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::ProductAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # A list of products.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::ProductAPI] }) }
      def to_hash
      end
    end
  end
end
