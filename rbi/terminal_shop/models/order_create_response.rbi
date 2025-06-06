# typed: strong

module TerminalShop
  module Models
    class OrderCreateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::OrderCreateResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # Order ID.
      sig { returns(String) }
      attr_accessor :data

      sig { params(data: String).returns(T.attached_class) }
      def self.new(
        # Order ID.
        data:
      )
      end

      sig { override.returns({ data: String }) }
      def to_hash
      end
    end
  end
end
