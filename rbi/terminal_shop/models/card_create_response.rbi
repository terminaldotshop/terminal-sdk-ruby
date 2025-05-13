# typed: strong

module TerminalShop
  module Models
    class CardCreateResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::CardCreateResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # ID of the card.
      sig { returns(String) }
      attr_accessor :data

      sig { params(data: String).returns(T.attached_class) }
      def self.new(
        # ID of the card.
        data:
      )
      end

      sig { override.returns({ data: String }) }
      def to_hash
      end
    end
  end
end
