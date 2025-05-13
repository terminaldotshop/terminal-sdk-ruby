# typed: strong

module TerminalShop
  module Models
    class CardCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(TerminalShop::CardCreateParams, TerminalShop::Internal::AnyHash)
        end

      # Stripe card token. Learn how to
      # [create one here](https://docs.stripe.com/api/tokens/create_card).
      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Stripe card token. Learn how to
        # [create one here](https://docs.stripe.com/api/tokens/create_card).
        token:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { token: String, request_options: TerminalShop::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
