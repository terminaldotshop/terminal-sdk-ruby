# typed: strong

module TerminalShop
  module Models
    class TokenCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::TokenCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(TerminalShop::Models::TokenCreateResponse::Data, TerminalShop::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(TerminalShop::Models::TokenCreateResponse::Data, TerminalShop::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::TokenCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        # Personal token ID.
        sig { returns(String) }
        attr_accessor :id

        # Personal access token. Include this in the Authorization header
        #   (`Bearer <token>`) when accessing the Terminal API.
        sig { returns(String) }
        attr_accessor :token

        sig { params(id: String, token: String).returns(T.attached_class) }
        def self.new(id:, token:)
        end

        sig { override.returns({id: String, token: String}) }
        def to_hash
        end
      end
    end
  end
end
