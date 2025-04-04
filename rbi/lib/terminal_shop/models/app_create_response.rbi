# typed: strong

module TerminalShop
  module Models
    class AppCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::AppCreateResponse::Data) }
      attr_reader :data

      sig do
        params(data: T.any(TerminalShop::Models::AppCreateResponse::Data, TerminalShop::Internal::Util::AnyHash))
          .void
      end
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::AppCreateResponse::Data, TerminalShop::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        # OAuth 2.0 client ID.
        sig { returns(String) }
        attr_accessor :id

        # OAuth 2.0 client secret.
        sig { returns(String) }
        attr_accessor :secret

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
