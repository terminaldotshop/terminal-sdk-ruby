# typed: strong

module TerminalShop
  module Models
    class CardCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # Stripe card token. Learn how to
      #   [create one here](https://docs.stripe.com/api/tokens/create_card).
      sig { returns(String) }
      def token
      end

      sig { params(_: String).returns(String) }
      def token=(_)
      end

      sig do
        params(
          token: String,
          request_options: T.any(
            TerminalShop::RequestOptions,
            TerminalShop::Util::AnyHash
          )
        )
          .returns(T.attached_class)
      end
      def self.new(token:, request_options: {})
      end

      sig { override.returns({token: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
