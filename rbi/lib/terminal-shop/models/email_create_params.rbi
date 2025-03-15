# typed: strong

module TerminalShop
  module Models
    class EmailCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # Email address to subscribe to Terminal updates with.
      sig { returns(String) }
      def email
      end

      sig { params(_: String).returns(String) }
      def email=(_)
      end

      sig do
        params(
          email: String,
          request_options: T.any(
            TerminalShop::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
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
