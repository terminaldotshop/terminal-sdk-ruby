# typed: strong

module Terminal
  module Models
    class AddressListResponse < Terminal::BaseModel
      sig { returns(T::Array[Terminal::Models::AddressAPI]) }
      attr_accessor :data

      sig { params(data: T::Array[Terminal::Models::AddressAPI]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Terminal::Models::AddressAPI]}) }
      def to_hash
      end
    end
  end
end
