# typed: strong

module Terminal
  module Models
    class TokenGetResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::TokenAPI) }
      attr_accessor :data

      sig { params(data: Terminal::Models::TokenAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::TokenAPI}) }
      def to_hash
      end
    end
  end
end
