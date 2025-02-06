# typed: strong

module TerminalShop
  module Models
    class TokenAPI < TerminalShop::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :token

      sig { returns(TerminalShop::Models::TokenAPI::Time) }
      attr_accessor :time

      sig { params(id: String, token: String, time: TerminalShop::Models::TokenAPI::Time).void }
      def initialize(id:, token:, time:)
      end

      sig { override.returns({id: String, token: String, time: TerminalShop::Models::TokenAPI::Time}) }
      def to_hash
      end

      class Time < TerminalShop::BaseModel
        sig { returns(String) }
        attr_accessor :created

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
