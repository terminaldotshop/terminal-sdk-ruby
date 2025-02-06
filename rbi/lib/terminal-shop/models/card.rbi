# typed: strong

module TerminalShop
  module Models
    class CardAPI < TerminalShop::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :brand

      sig { returns(TerminalShop::Models::CardAPI::Expiration) }
      attr_accessor :expiration

      sig { returns(String) }
      attr_accessor :last4

      sig do
        params(
          id: String,
          brand: String,
          expiration: TerminalShop::Models::CardAPI::Expiration,
          last4: String
        ).void
      end
      def initialize(id:, brand:, expiration:, last4:)
      end

      sig do
        override.returns(
          {
            id: String,
            brand: String,
            expiration: TerminalShop::Models::CardAPI::Expiration,
            last4: String
          }
        )
      end
      def to_hash
      end

      class Expiration < TerminalShop::BaseModel
        sig { returns(Integer) }
        attr_accessor :month

        sig { returns(Integer) }
        attr_accessor :year

        sig { params(month: Integer, year: Integer).void }
        def initialize(month:, year:)
        end

        sig { override.returns({month: Integer, year: Integer}) }
        def to_hash
        end
      end
    end
  end
end
