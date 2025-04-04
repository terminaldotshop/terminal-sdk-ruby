# typed: strong

module TerminalShop
  module Models
    class EmailCreateParams < TerminalShop::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # Email address to subscribe to Terminal updates with.
      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(email:, request_options: {})
      end

      sig { override.returns({email: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
