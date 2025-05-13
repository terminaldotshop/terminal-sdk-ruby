# typed: strong

module TerminalShop
  module Models
    class EmailCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::EmailCreateParams,
            TerminalShop::Internal::AnyHash
          )
        end

      # Email address to subscribe to Terminal updates with.
      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Email address to subscribe to Terminal updates with.
        email:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { email: String, request_options: TerminalShop::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
