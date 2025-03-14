# typed: strong

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      sig { returns(String) }
      def product_variant_id
      end

      sig { params(_: String).returns(String) }
      def product_variant_id=(_)
      end

      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_
      end

      sig { params(_: String).returns(String) }
      def next_=(_)
      end

      sig do
        returns(
          T.nilable(
            T.any(
              TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
              TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
            )
          )
        )
      end
      def schedule
      end

      sig do
        params(
          _: T.any(
            TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
            TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
          )
        )
          .returns(
            T.any(
              TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
              TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
            )
          )
      end
      def schedule=(_)
      end

      sig do
        params(
          id: String,
          address_id: String,
          card_id: String,
          product_variant_id: String,
          quantity: Integer,
          next_: String,
          schedule: T.any(
            TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
            TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
          )
        )
          .returns(T.attached_class)
      end
      def self.new(id:, address_id:, card_id:, product_variant_id:, quantity:, next_: nil, schedule: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              address_id: String,
              card_id: String,
              product_variant_id: String,
              quantity: Integer,
              next_: String,
              schedule: T.any(
                TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
                TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
              )
            }
          )
      end
      def to_hash
      end

      class Schedule < TerminalShop::Union
        abstract!

        class Fixed < TerminalShop::BaseModel
          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :fixed)
          end

          sig { override.returns({type: Symbol}) }
          def to_hash
          end
        end

        class Weekly < TerminalShop::BaseModel
          sig { returns(Integer) }
          def interval
          end

          sig { params(_: Integer).returns(Integer) }
          def interval=(_)
          end

          sig { returns(Symbol) }
          def type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def type=(_)
          end

          sig { params(interval: Integer, type: Symbol).returns(T.attached_class) }
          def self.new(interval:, type: :weekly)
          end

          sig { override.returns({interval: Integer, type: Symbol}) }
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns(
                [[NilClass, TerminalShop::Models::SubscriptionAPI::Schedule::Fixed], [NilClass, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
