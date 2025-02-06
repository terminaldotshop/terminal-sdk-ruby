# typed: strong

module TerminalShop
  module Models
    class CartSetCardParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      attr_accessor :card_id

      sig do
        params(
          card_id: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(card_id:, request_options: {})
      end

      sig { override.returns({card_id: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
