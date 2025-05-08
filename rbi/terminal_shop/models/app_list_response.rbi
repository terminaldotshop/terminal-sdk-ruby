# typed: strong

module TerminalShop
  module Models
    class AppListResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # List of apps.
      sig { returns(T::Array[TerminalShop::AppAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[TerminalShop::AppAPI::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of apps.
        data:
      )
      end

      sig { override.returns({ data: T::Array[TerminalShop::AppAPI] }) }
      def to_hash
      end
    end
  end
end
