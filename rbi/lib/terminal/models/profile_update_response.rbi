# typed: strong

module Terminal
  module Models
    class ProfileUpdateResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::ProfileAPI) }
      attr_accessor :data

      sig { params(data: Terminal::Models::ProfileAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::ProfileAPI}) }
      def to_hash
      end
    end
  end
end
