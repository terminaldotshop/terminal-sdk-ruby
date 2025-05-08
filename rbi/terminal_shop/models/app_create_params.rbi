# typed: strong

module TerminalShop
  module Models
    class AppCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :redirect_uri

      sig do
        params(
          name: String,
          redirect_uri: String,
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(name:, redirect_uri:, request_options: {})
      end

      sig do
        override.returns(
          {
            name: String,
            redirect_uri: String,
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
