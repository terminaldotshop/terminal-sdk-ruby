# typed: strong

module Terminal
  module Models
    class CartSetAddressParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      sig { returns(String) }
      attr_accessor :address_id

      sig do
        params(
          address_id: String,
          request_options: T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(address_id:, request_options: {})
      end

      sig { override.returns({address_id: String, request_options: Terminal::RequestOptions}) }
      def to_hash
      end
    end
  end
end
