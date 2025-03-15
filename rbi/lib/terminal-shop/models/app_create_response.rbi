# typed: strong

module TerminalShop
  module Models
    class AppCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::AppCreateResponse::Data) }
      def data
      end

      sig do
        params(_: TerminalShop::Models::AppCreateResponse::Data)
          .returns(TerminalShop::Models::AppCreateResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::AppCreateResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        # OAuth 2.0 client ID.
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # OAuth 2.0 client secret.
        sig { returns(String) }
        def secret
        end

        sig { params(_: String).returns(String) }
        def secret=(_)
        end

        sig { params(id: String, secret: String).returns(T.attached_class) }
        def self.new(id:, secret:)
        end

        sig { override.returns({id: String, secret: String}) }
        def to_hash
        end
      end
    end
  end
end
