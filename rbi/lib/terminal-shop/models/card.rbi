# typed: strong

module TerminalShop
  module Models
    class CardAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def brand
      end

      sig { params(_: String).returns(String) }
      def brand=(_)
      end

      sig { returns(TerminalShop::Models::CardAPI::Expiration) }
      def expiration
      end

      sig { params(_: TerminalShop::Models::CardAPI::Expiration).returns(TerminalShop::Models::CardAPI::Expiration) }
      def expiration=(_)
      end

      sig { returns(String) }
      def last4
      end

      sig { params(_: String).returns(String) }
      def last4=(_)
      end

      sig do
        params(id: String, brand: String, expiration: TerminalShop::Models::CardAPI::Expiration, last4: String)
          .void
      end
      def initialize(id:, brand:, expiration:, last4:)
      end

      sig do
        override
          .returns({id: String, brand: String, expiration: TerminalShop::Models::CardAPI::Expiration, last4: String})
      end
      def to_hash
      end

      class Expiration < TerminalShop::BaseModel
        sig { returns(Integer) }
        def month
        end

        sig { params(_: Integer).returns(Integer) }
        def month=(_)
        end

        sig { returns(Integer) }
        def year
        end

        sig { params(_: Integer).returns(Integer) }
        def year=(_)
        end

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
