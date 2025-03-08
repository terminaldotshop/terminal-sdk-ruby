# typed: strong

module TerminalShop
  module Models
    class AppCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(String) }
      def redirect_uri
      end

      sig { params(_: String).returns(String) }
      def redirect_uri=(_)
      end

      sig do
        params(
          name: String,
          redirect_uri: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
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
