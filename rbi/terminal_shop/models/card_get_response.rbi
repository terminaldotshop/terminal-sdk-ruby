# typed: strong

module TerminalShop
  module Models
    class CardGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::CardGetResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # Credit card used for payments in the Terminal shop.
      sig { returns(TerminalShop::CardAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::CardAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::CardAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Credit card used for payments in the Terminal shop.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::CardAPI }) }
      def to_hash
      end
    end
  end
end
