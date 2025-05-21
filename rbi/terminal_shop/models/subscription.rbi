# typed: strong

module TerminalShop
  module Models
    class SubscriptionAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(TerminalShop::SubscriptionAPI, TerminalShop::Internal::AnyHash)
        end

      # Unique object identifier. The format and length of IDs may change over time.
      sig { returns(String) }
      attr_accessor :id

      # ID of the shipping address used for the subscription.
      sig { returns(String) }
      attr_accessor :address_id

      # ID of the card used for the subscription.
      sig { returns(String) }
      attr_accessor :card_id

      # Date the subscription was created.
      sig { returns(String) }
      attr_accessor :created

      # Price of the subscription in cents (USD).
      sig { returns(Integer) }
      attr_accessor :price

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
        returns(T.nilable(TerminalShop::SubscriptionAPI::Schedule::Variants))
      end
      attr_reader :schedule

      sig do
        params(
          schedule:
            T.any(
              TerminalShop::SubscriptionAPI::Schedule::Fixed::OrHash,
              TerminalShop::SubscriptionAPI::Schedule::Weekly::OrHash
            )
        ).void
      end
      attr_writer :schedule

      # Subscription to a Terminal shop product.
      sig do
        params(
          id: String,
          address_id: String,
          card_id: String,
          created: String,
          price: Integer,
          product_variant_id: String,
          quantity: Integer,
          next_: String,
          schedule:
            T.any(
              TerminalShop::SubscriptionAPI::Schedule::Fixed::OrHash,
              TerminalShop::SubscriptionAPI::Schedule::Weekly::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique object identifier. The format and length of IDs may change over time.
        id:,
        # ID of the shipping address used for the subscription.
        address_id:,
        # ID of the card used for the subscription.
        card_id:,
        # Date the subscription was created.
        created:,
        # Price of the subscription in cents (USD).
        price:,
        # ID of the product variant being subscribed to.
        product_variant_id:,
        # Quantity of the subscription.
        quantity:,
        # Next shipment and billing date for the subscription.
        next_: nil,
        # Schedule of the subscription.
        schedule: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address_id: String,
            card_id: String,
            created: String,
            price: Integer,
            product_variant_id: String,
            quantity: Integer,
            next_: String,
            schedule: TerminalShop::SubscriptionAPI::Schedule::Variants
          }
        )
      end
      def to_hash
      end

      # Schedule of the subscription.
      module Schedule
        extend TerminalShop::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              TerminalShop::SubscriptionAPI::Schedule::Fixed,
              TerminalShop::SubscriptionAPI::Schedule::Weekly
            )
          end

        class Fixed < TerminalShop::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TerminalShop::SubscriptionAPI::Schedule::Fixed,
                TerminalShop::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          sig { params(type: Symbol).returns(T.attached_class) }
          def self.new(type: :fixed)
          end

          sig { override.returns({ type: Symbol }) }
          def to_hash
          end
        end

        class Weekly < TerminalShop::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                TerminalShop::SubscriptionAPI::Schedule::Weekly,
                TerminalShop::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :interval

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(interval: Integer, type: Symbol).returns(T.attached_class)
          end
          def self.new(interval:, type: :weekly)
          end

          sig { override.returns({ interval: Integer, type: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[TerminalShop::SubscriptionAPI::Schedule::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
