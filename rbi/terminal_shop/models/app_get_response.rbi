# typed: strong

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::AppGetResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # A Terminal App used for configuring an OAuth 2.0 client.
      sig { returns(TerminalShop::AppAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::AppAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::AppAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A Terminal App used for configuring an OAuth 2.0 client.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::AppAPI }) }
      def to_hash
      end
    end
  end
end
