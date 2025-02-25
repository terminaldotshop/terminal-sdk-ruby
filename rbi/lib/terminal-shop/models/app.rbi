# typed: strong

module TerminalShop
  module Models
    class AppAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def redirect_uri
      end

      sig { params(_: String).returns(String) }
      def redirect_uri=(_)
      end

      sig { returns(String) }
      def secret
      end

      sig { params(_: String).returns(String) }
      def secret=(_)
      end

      sig { params(id: String, name: String, redirect_uri: String, secret: String).void }
      def initialize(id:, name:, redirect_uri:, secret:)
      end

      sig { override.returns({id: String, name: String, redirect_uri: String, secret: String}) }
      def to_hash
      end
    end
  end
end
