# typed: strong

module TerminalShop
  module Models
    class AppCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :redirect_uri

      sig do
        params(
          name: String,
          redirect_uri: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(name:, redirect_uri:, request_options: {})
      end

      sig do
        override.returns({name: String, redirect_uri: String, request_options: TerminalShop::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
