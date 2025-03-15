# typed: strong

module TerminalShop
  module Models
    class AppAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Name of the app.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # Redirect URI of the app.
      sig { returns(String) }
      def redirect_uri
      end

      sig { params(_: String).returns(String) }
      def redirect_uri=(_)
      end

      # OAuth 2.0 client secret of the app (obfuscated).
      sig { returns(String) }
      def secret
      end

      sig { params(_: String).returns(String) }
      def secret=(_)
      end

      # A Terminal App used for configuring an OAuth 2.0 client.
      sig { params(id: String, name: String, redirect_uri: String, secret: String).returns(T.attached_class) }
      def self.new(id:, name:, redirect_uri:, secret:)
      end

      sig { override.returns({id: String, name: String, redirect_uri: String, secret: String}) }
      def to_hash
      end
    end
  end
end
