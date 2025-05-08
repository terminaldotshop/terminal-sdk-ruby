# typed: strong

module TerminalShop
  module Models
    class AppAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Name of the app.
      sig { returns(String) }
      attr_accessor :name

      # Redirect URI of the app.
      sig { returns(String) }
      attr_accessor :redirect_uri

      # OAuth 2.0 client secret of the app (obfuscated).
      sig { returns(String) }
      attr_accessor :secret

      # A Terminal App used for configuring an OAuth 2.0 client.
      sig do
        params(
          id: String,
          name: String,
          redirect_uri: String,
          secret: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # Name of the app.
        name:,
        # Redirect URI of the app.
        redirect_uri:,
        # OAuth 2.0 client secret of the app (obfuscated).
        secret:
      )
      end

      sig do
        override.returns(
          { id: String, name: String, redirect_uri: String, secret: String }
        )
      end
      def to_hash
      end
    end
  end
end
