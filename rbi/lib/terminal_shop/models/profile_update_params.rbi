# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          email: String,
          name: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(email:, name:, request_options: {}); end

      sig { override.returns({email: String, name: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash; end
    end
  end
end
