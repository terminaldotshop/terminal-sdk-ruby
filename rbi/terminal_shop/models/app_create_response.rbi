# typed: strong

module TerminalShop
  module Models
    class AppCreateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      sig { returns(TerminalShop::Models::AppCreateResponse::Data) }
      attr_reader :data

      sig do
        params(data: TerminalShop::Models::AppCreateResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: TerminalShop::Models::AppCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: TerminalShop::Models::AppCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

        # OAuth 2.0 client ID.
        sig { returns(String) }
        attr_accessor :id

        # OAuth 2.0 client secret.
        sig { returns(String) }
        attr_accessor :secret

        sig { params(id: String, secret: String).returns(T.attached_class) }
        def self.new(
          # OAuth 2.0 client ID.
          id:,
          # OAuth 2.0 client secret.
          secret:
        )
        end

        sig { override.returns({ id: String, secret: String }) }
        def to_hash
        end
      end
    end
  end
end
