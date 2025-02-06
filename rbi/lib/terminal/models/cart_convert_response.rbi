# typed: strong

module Terminal
  module Models
    class CartConvertResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::OrderAPI) }
      attr_accessor :data

      sig { params(data: Terminal::Models::OrderAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::OrderAPI}) }
      def to_hash
      end
    end
  end
end
