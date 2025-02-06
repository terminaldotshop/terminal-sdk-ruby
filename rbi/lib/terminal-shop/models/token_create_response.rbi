# typed: strong

module TerminalShop
  module Models
    class TokenCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::TokenCreateResponse::Data) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::TokenCreateResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::TokenCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
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
