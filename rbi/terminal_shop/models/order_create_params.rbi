# typed: strong

module TerminalShop
  module Models
    class OrderCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

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
          request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Shipping address ID.
        address_id:,
        # Card ID.
        card_id:,
        # Product variants to include in the order, along with their quantities.
        variants:,
        request_options: {}
      ); end
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
      def to_hash; end
    end
  end
end
