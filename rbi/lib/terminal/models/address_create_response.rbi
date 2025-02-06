# typed: strong

module Terminal
  module Models
    class AddressCreateResponse < Terminal::BaseModel
      sig { returns(String) }
      attr_accessor :data

      sig { params(data: String).void }
      def initialize(data:)
      end

      sig { override.returns({data: String}) }
      def to_hash
      end
    end
  end
end
