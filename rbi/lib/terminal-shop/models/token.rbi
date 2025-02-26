# typed: strong

module TerminalShop
  module Models
    class TokenAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig { returns(String) }
      def created
      end

      sig { params(_: String).returns(String) }
      def created=(_)
      end

      sig { params(id: String, token: String, created: String).void }
      def initialize(id:, token:, created:)
      end

      sig { override.returns({id: String, token: String, created: String}) }
      def to_hash
      end
    end
  end
end
