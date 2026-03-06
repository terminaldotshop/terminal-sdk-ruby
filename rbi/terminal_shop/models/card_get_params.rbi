# typed: strong

module TerminalShop
  module Models
    class CardGetParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(TerminalShop::CardGetParams, TerminalShop::Internal::AnyHash)
        end

      # ID of the card to get.
      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the card to get.
        id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, request_options: TerminalShop::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
