# typed: strong

module Terminal
  module Models
    class AppGetResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::AppAPI) }
      attr_accessor :data

      sig { params(data: Terminal::Models::AppAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::AppAPI}) }
      def to_hash
      end
    end
  end
end
