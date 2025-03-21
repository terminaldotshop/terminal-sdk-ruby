# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig do
        params(
          email: String,
          name: String,
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(email:, name:, request_options: {})
      end

      sig { override.returns({email: String, name: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
