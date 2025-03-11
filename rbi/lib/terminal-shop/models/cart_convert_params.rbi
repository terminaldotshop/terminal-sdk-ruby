# typed: strong

module TerminalShop
  module Models
    class CartConvertParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(T.nilable(String)) }
      def recipient_email
      end

      sig { params(_: String).returns(String) }
      def recipient_email=(_)
      end

      sig do
        params(
          recipient_email: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(recipient_email: nil, request_options: {})
      end

      sig { override.returns({recipient_email: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
