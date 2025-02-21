# typed: strong

module TerminalShop
  module Models
    class AppListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
      def data
      end

      sig { params(_: T::Array[TerminalShop::Models::AppAPI]).returns(T::Array[TerminalShop::Models::AppAPI]) }
      def data=(_)
      end

      sig { params(data: T::Array[TerminalShop::Models::AppAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::AppAPI]}) }
      def to_hash
      end
    end
  end
end
