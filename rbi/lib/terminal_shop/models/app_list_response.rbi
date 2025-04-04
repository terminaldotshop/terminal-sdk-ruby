# typed: strong

module TerminalShop
  module Models
    class AppListResponse < TerminalShop::BaseModel
      # List of apps.
      sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(TerminalShop::Models::AppAPI, TerminalShop::Internal::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::AppAPI]}) }
      def to_hash
      end
    end
  end
end
