# typed: strong

module Terminal
  module Models
    class EmailCreateParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      sig { returns(String) }
      attr_accessor :email

      sig do
        params(
          email: String,
          request_options: T.any(
            Terminal::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(email:, request_options: {})
      end

      sig { override.returns({email: String, request_options: Terminal::RequestOptions}) }
      def to_hash
      end
    end
  end
end
