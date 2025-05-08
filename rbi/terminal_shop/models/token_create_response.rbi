# typed: strong

module TerminalShop
  module Models
    class TokenCreateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      sig { returns(TerminalShop::Models::TokenCreateResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: TerminalShop::Models::TokenCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: TerminalShop::Models::TokenCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: TerminalShop::Models::TokenCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

        # Personal token ID.
        sig { returns(String) }
        attr_accessor :id

        # Personal access token. Include this in the Authorization header
        # (`Bearer <token>`) when accessing the Terminal API.
        sig { returns(String) }
        attr_accessor :token

        sig { params(id: String, token: String).returns(T.attached_class) }
        def self.new(
          # Personal token ID.
          id:,
          # Personal access token. Include this in the Authorization header
          # (`Bearer <token>`) when accessing the Terminal API.
          token:
        )
        end

        sig { override.returns({ id: String, token: String }) }
        def to_hash
        end
      end
    end
  end
end
