# typed: strong

module TerminalShop
  module Models
    class CardAPI < TerminalShop::Internal::Type::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # Brand of the card.
      sig { returns(String) }
      attr_accessor :brand

      # Date the card was created.
      sig { returns(String) }
      attr_accessor :created

      # Expiration of the card.
      sig { returns(TerminalShop::Models::CardAPI::Expiration) }
      attr_reader :expiration

      sig { params(expiration: T.any(TerminalShop::Models::CardAPI::Expiration, TerminalShop::Internal::AnyHash)).void }
      attr_writer :expiration

      # Last four digits of the card.
      sig { returns(String) }
      attr_accessor :last4

      # Credit card used for payments in the Terminal shop.
      sig do
        params(
          id: String,
          brand: String,
          created: String,
          expiration: T.any(TerminalShop::Models::CardAPI::Expiration, TerminalShop::Internal::AnyHash),
          last4: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, brand:, created:, expiration:, last4:); end

      sig do
        override
          .returns(
            {id: String, brand: String, created: String, expiration: TerminalShop::Models::CardAPI::Expiration, last4: String}
          )
      end
      def to_hash; end

      class Expiration < TerminalShop::Internal::Type::BaseModel
        # Expiration month of the card.
        sig { returns(Integer) }
        attr_accessor :month

        # Expiration year of the card.
        sig { returns(Integer) }
        attr_accessor :year

        # Expiration of the card.
        sig { params(month: Integer, year: Integer).returns(T.attached_class) }
        def self.new(month:, year:); end

        sig { override.returns({month: Integer, year: Integer}) }
        def to_hash; end
      end
    end
  end
end
