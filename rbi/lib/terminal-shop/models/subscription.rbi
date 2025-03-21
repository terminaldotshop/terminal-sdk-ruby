# typed: strong

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # ID of the shipping address used for the subscription.
      sig { returns(String) }
      def address_id
      end

      sig { params(_: String).returns(String) }
      def address_id=(_)
      end

      # ID of the card used for the subscription.
      sig { returns(String) }
      def card_id
      end

      sig { params(_: String).returns(String) }
      def card_id=(_)
      end

      # ID of the product variant being subscribed to.
      sig { returns(String) }
      def product_variant_id
      end

      sig { params(_: String).returns(String) }
      def product_variant_id=(_)
      end

      # Quantity of the subscription.
      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      # Next shipment and billing date for the subscription.
      sig { returns(T.nilable(String)) }
      def next_
      end

      sig { params(_: String).returns(String) }
      def next_=(_)
      end

      # Schedule of the subscription.
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

      # Subscription to a Terminal shop product.
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

      # Schedule of the subscription.
      module Schedule
        extend TerminalShop::Union

        Variants =
          type_template(:out) do
            {
              fixed: T.any(
                TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
                TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
              )
            }
          end

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
                [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
              )
          end
          def variants
          end
        end
      end
    end
  end
end
