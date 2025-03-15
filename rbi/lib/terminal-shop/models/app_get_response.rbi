# typed: strong

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::BaseModel
      # A Terminal App used for configuring an OAuth 2.0 client.
      sig { returns(TerminalShop::Models::AppAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::AppAPI).returns(TerminalShop::Models::AppAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::AppAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppAPI}) }
      def to_hash
      end
    end
  end
end
