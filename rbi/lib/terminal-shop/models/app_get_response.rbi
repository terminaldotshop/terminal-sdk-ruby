# typed: strong

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::BaseModel
      # A Terminal App used for configuring an OAuth 2.0 client.
      sig { returns(TerminalShop::Models::AppAPI) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::AppAPI, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::AppAPI, TerminalShop::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: T.any(TerminalShop::Models::AppAPI, TerminalShop::Util::AnyHash)).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppAPI}) }
      def to_hash
      end
    end
  end
end
