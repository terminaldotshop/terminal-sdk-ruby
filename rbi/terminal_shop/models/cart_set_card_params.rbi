# typed: strong

module TerminalShop
  module Models
    class CartSetCardParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # ID of the credit card to set for the current user's cart.
      sig { returns(String) }
      attr_accessor :card_id

      sig do
        params(
          card_id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the credit card to set for the current user's cart.
        card_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { card_id: String, request_options: TerminalShop::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
