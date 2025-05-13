# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::ProfileUpdateParams,
            TerminalShop::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          email: String,
          name: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(email:, name:, request_options: {})
      end

      sig do
        override.returns(
          {
            email: String,
            name: String,
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
