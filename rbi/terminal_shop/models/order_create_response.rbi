# typed: strong

module TerminalShop
  module Models
    class OrderCreateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
