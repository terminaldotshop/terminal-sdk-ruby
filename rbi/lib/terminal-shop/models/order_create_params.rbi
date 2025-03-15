# typed: strong

module TerminalShop
  module Models
    class OrderCreateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # Shipping address ID.
      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      # Card ID.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # Product variants to include in the order, along with their quantities.
      sig { returns(T::Hash[Symbol, Integer]) }
      def variants
      end

      sig { params(_: T::Hash[Symbol, Integer]).returns(T::Hash[Symbol, Integer]) }
      def variants=(_)
      end

      sig do
        params(
          address_id: String,
          card_id: String,
          variants: T::Hash[Symbol, Integer],
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
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
