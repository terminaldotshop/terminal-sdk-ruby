# typed: strong

module TerminalShop
  module Models
    class CardCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # Stripe card token. Learn how to
      # [create one here](https://docs.stripe.com/api/tokens/create_card).
      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(token:, request_options: {}); end

      sig { override.returns({token: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash; end
    end
  end
end
