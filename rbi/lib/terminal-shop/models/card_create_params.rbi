# typed: strong

module TerminalShop
  module Models
    class CardCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(token:, request_options: {})
      end

      sig { override.returns({token: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
