# typed: strong

module Terminal
  module Models
    class EmailCreateResponse < Terminal::BaseModel
      sig { returns(Symbol) }
      attr_accessor :data

      sig { params(data: Symbol).void }
      def initialize(data: :ok)
      end

      sig { override.returns({data: Symbol}) }
      def to_hash
      end
    end
  end
end
