# typed: strong

module TerminalShop
  module Models
    class AppCreateResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::AppCreateResponse::Data) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::AppCreateResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppCreateResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :secret

        sig { params(id: String, secret: String).void }
        def initialize(id:, secret:)
        end

        sig { override.returns({id: String, secret: String}) }
        def to_hash
        end
      end
    end
  end
end
