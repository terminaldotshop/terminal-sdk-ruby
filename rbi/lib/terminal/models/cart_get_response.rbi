# typed: strong

module Terminal
  module Models
    class CartGetResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::CartAPI) }
      attr_accessor :data

      sig { params(data: Terminal::Models::CartAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::CartAPI}) }
      def to_hash
      end
    end
  end
end
