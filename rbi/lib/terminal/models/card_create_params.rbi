# typed: strong

module Terminal
  module Models
    class CardCreateParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      sig { returns(String) }
      attr_accessor :token

      sig do
        params(
          token: String,
          request_options: T.any(
            Terminal::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(token:, request_options: {})
      end

      sig { override.returns({token: String, request_options: Terminal::RequestOptions}) }
      def to_hash
      end
    end
  end
end
