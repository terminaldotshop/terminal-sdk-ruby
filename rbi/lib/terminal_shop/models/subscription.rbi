# typed: strong

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::BaseModel
      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # ID of the shipping address used for the subscription.
      sig { returns(String) }
      attr_accessor :address_id

      # ID of the card used for the subscription.
      sig { returns(String) }
      attr_accessor :card_id

      # ID of the product variant being subscribed to.
      sig { returns(String) }
      attr_accessor :product_variant_id

      # Quantity of the subscription.
      sig { returns(Integer) }
      attr_accessor :quantity

      # Next shipment and billing date for the subscription.
      sig { returns(T.nilable(String)) }
      attr_reader :next_

      sig { params(next_: String).void }
      attr_writer :next_

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
      attr_reader :schedule

      sig do
        params(
          schedule: T.any(
            TerminalShop::Models::SubscriptionAPI::Schedule::Fixed,
            TerminalShop::Internal::Util::AnyHash,
            TerminalShop::Models::SubscriptionAPI::Schedule::Weekly
          )
        )
          .void
      end
      attr_writer :schedule

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
            TerminalShop::Internal::Util::AnyHash,
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

        class Fixed < TerminalShop::BaseModel
          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :fixed)
          end

          sig { override.returns({type: Symbol}) }
          def to_hash
          end
        end

        class Weekly < TerminalShop::BaseModel
          sig { returns(Integer) }
          attr_accessor :interval

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(interval: Integer, type: Symbol).returns(T.attached_class) }
          def self.new(interval:, type: :weekly)
          end

          sig { override.returns({interval: Integer, type: Symbol}) }
          def to_hash
          end
        end

        sig do
          override
            .returns(
              [TerminalShop::Models::SubscriptionAPI::Schedule::Fixed, TerminalShop::Models::SubscriptionAPI::Schedule::Weekly]
            )
        end
        def self.variants
        end
      end
    end
  end
end
