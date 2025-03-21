# typed: strong

module TerminalShop
  module Models
    class CardAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # Brand of the card.
      sig { returns(String) }
      def brand
      end

      sig { params(_: String).returns(String) }
      def brand=(_)
      end

      # Expiration of the card.
      sig { returns(TerminalShop::Models::CardAPI::Expiration) }
      def expiration
      end

      sig do
        params(_: T.any(TerminalShop::Models::CardAPI::Expiration, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::CardAPI::Expiration, TerminalShop::Util::AnyHash))
      end
      def expiration=(_)
      end

      # Last four digits of the card.
      sig { returns(String) }
      def last4
      end

      sig { params(_: String).returns(String) }
      def last4=(_)
      end

      # Credit card used for payments in the Terminal shop.
      sig do
        params(
          id: String,
          brand: String,
          expiration: T.any(TerminalShop::Models::CardAPI::Expiration, TerminalShop::Util::AnyHash),
          last4: String
        )
          .returns(T.attached_class)
      end
      def self.new(id:, brand:, expiration:, last4:)
      end

      sig do
        override
          .returns({id: String, brand: String, expiration: TerminalShop::Models::CardAPI::Expiration, last4: String})
      end
      def to_hash
      end

      class Expiration < TerminalShop::BaseModel
        # Expiration month of the card.
        sig { returns(Integer) }
        def month
        end

        sig { params(_: Integer).returns(Integer) }
        def month=(_)
        end

        # Expiration year of the card.
        sig { returns(Integer) }
        def year
        end

        sig { params(_: Integer).returns(Integer) }
        def year=(_)
        end

        # Expiration of the card.
        sig { params(month: Integer, year: Integer).returns(T.attached_class) }
        def self.new(month:, year:)
        end

        sig { override.returns({month: Integer, year: Integer}) }
        def to_hash
        end
      end
    end
  end
end
