# typed: strong

module TerminalShop
  module Models
    class OrderCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # Shipping address ID.
      sig { returns(String) }
      attr_accessor :address_id

      # Card ID.
      sig { returns(String) }
      attr_accessor :card_id

      # Product variants to include in the order, along with their quantities.
      sig { returns(T::Hash[Symbol, Integer]) }
      attr_accessor :variants

      sig do
        params(
          address_id: String,
          card_id: String,
          variants: T::Hash[Symbol, Integer],
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(address_id:, card_id:, variants:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              address_id: String,
              card_id: String,
              variants: T::Hash[Symbol, Integer],
              request_options: TerminalShop::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
