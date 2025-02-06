# typed: strong

module Terminal
  module Models
    class TokenCreateResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::TokenCreateResponse::Data) }
      attr_accessor :data

      sig { params(data: Terminal::Models::TokenCreateResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::TokenCreateResponse::Data}) }
      def to_hash
      end

      class Data < Terminal::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :token

        sig { params(id: String, token: String).void }
        def initialize(id:, token:)
        end

        sig { override.returns({id: String, token: String}) }
        def to_hash
        end
      end
    end
  end
end
