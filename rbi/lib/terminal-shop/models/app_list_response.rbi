# typed: strong

module TerminalShop
  module Models
    class AppListResponse < TerminalShop::BaseModel
      sig { returns(T::Array[TerminalShop::Models::AppAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[TerminalShop::Models::AppAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[TerminalShop::Models::AppAPI]}) }
      def to_hash
      end
    end
  end
end
