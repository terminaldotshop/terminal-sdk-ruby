# typed: strong

module Terminal
  module Models
    class CartSetCardParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      sig { returns(String) }
      attr_accessor :card_id

      sig do
        params(
          card_id: String,
          request_options: T.any(
            Terminal::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(card_id:, request_options: {})
      end

      sig { override.returns({card_id: String, request_options: Terminal::RequestOptions}) }
      def to_hash
      end
    end
  end
end
