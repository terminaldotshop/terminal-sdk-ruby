# typed: strong

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::BaseModel
      # A Terminal App used for configuring an OAuth 2.0 client.
      sig { returns(TerminalShop::Models::AppAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::AppAPI, TerminalShop::Internal::Util::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::AppAPI, TerminalShop::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AppAPI}) }
      def to_hash
      end
    end
  end
end
