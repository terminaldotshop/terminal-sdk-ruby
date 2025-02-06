# typed: strong

module TerminalShop
  module Models
    class EmailCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(email:, request_options: {})
      end

      sig { override.returns({email: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
