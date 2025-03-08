# typed: strong

module TerminalShop
  module Models
    class TokenCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::TokenCreateResponse::Data) }
      def data
      end

      sig do
        params(_: TerminalShop::Models::TokenCreateResponse::Data)
          .returns(TerminalShop::Models::TokenCreateResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::TokenCreateResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::TokenCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
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
