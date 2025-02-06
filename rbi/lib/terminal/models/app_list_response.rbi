# typed: strong

module Terminal
  module Models
    class AppListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::AppAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::AppAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::AppAPI]}) }
      def to_hash
      end
    end
  end
end
