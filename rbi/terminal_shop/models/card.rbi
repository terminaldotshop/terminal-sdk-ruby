# typed: strong

module TerminalShop
  module Models
    class CardAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TerminalShop::CardAPI, TerminalShop::Internal::AnyHash)
        end

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
      sig { returns(TerminalShop::CardAPI::Expiration) }
      attr_reader :expiration

      sig { params(expiration: TerminalShop::CardAPI::Expiration::OrHash).void }
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
          expiration: TerminalShop::CardAPI::Expiration::OrHash,
          last4: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # Brand of the card.
        brand:,
        # Date the card was created.
        created:,
        # Expiration of the card.
        expiration:,
        # Last four digits of the card.
        last4:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand: String,
            created: String,
            expiration: TerminalShop::CardAPI::Expiration,
            last4: String
          }
        )
      end
      def to_hash
      end

      class Expiration < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::CardAPI::Expiration,
              TerminalShop::Internal::AnyHash
            )
          end

        # Expiration month of the card.
        sig { returns(Integer) }
        attr_accessor :month

        # Expiration year of the card.
        sig { returns(Integer) }
        attr_accessor :year

        # Expiration of the card.
        sig { params(month: Integer, year: Integer).returns(T.attached_class) }
        def self.new(
          # Expiration month of the card.
          month:,
          # Expiration year of the card.
          year:
        )
        end

        sig { override.returns({ month: Integer, year: Integer }) }
        def to_hash
        end
      end
    end
  end
end
