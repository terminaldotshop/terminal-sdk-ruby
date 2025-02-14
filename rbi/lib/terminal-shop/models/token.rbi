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

      sig { returns(TerminalShop::Models::TokenAPI::Time) }
      def time
      end

      sig { params(_: TerminalShop::Models::TokenAPI::Time).returns(TerminalShop::Models::TokenAPI::Time) }
      def time=(_)
      end

      sig { params(id: String, token: String, time: TerminalShop::Models::TokenAPI::Time).void }
      def initialize(id:, token:, time:)
      end

      sig { override.returns({id: String, token: String, time: TerminalShop::Models::TokenAPI::Time}) }
      def to_hash
      end

      class Time < TerminalShop::BaseModel
        sig { returns(String) }
        def created
        end

        sig { params(_: String).returns(String) }
        def created=(_)
        end

        sig { params(created: String).void }
        def initialize(created:)
        end

        sig { override.returns({created: String}) }
        def to_hash
        end
      end
    end
  end
end
