# typed: strong

module TerminalShop
  module Models
    class SubscriptionUpdateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # New shipping address ID for the subscription.
      sig { returns(T.nilable(String)) }
      attr_reader :address_id

      sig { params(address_id: String).void }
      attr_writer :address_id

      # New payment method ID for the subscription.
      sig { returns(T.nilable(String)) }
      attr_reader :card_id

      sig { params(card_id: String).void }
      attr_writer :card_id

      # New schedule for the subscription.
      sig do
        returns(
          T.nilable(
            T.any(
              TerminalShop::SubscriptionUpdateParams::Schedule::Fixed,
              TerminalShop::SubscriptionUpdateParams::Schedule::Weekly
            )
          )
        )
      end
      attr_reader :schedule

      sig do
        params(
          schedule:
            T.any(
              TerminalShop::SubscriptionUpdateParams::Schedule::Fixed::OrHash,
              TerminalShop::SubscriptionUpdateParams::Schedule::Weekly::OrHash
            )
        ).void
      end
      attr_writer :schedule

      sig do
        params(
          address_id: String,
          card_id: String,
          schedule:
            T.any(
              TerminalShop::SubscriptionUpdateParams::Schedule::Fixed::OrHash,
              TerminalShop::SubscriptionUpdateParams::Schedule::Weekly::OrHash
            ),
          request_options: TerminalShop::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # New shipping address ID for the subscription.
        address_id: nil,
        # New payment method ID for the subscription.
        card_id: nil,
        # New schedule for the subscription.
        schedule: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            address_id: String,
            card_id: String,
            schedule:
              T.any(
                TerminalShop::SubscriptionUpdateParams::Schedule::Fixed,
                TerminalShop::SubscriptionUpdateParams::Schedule::Weekly
              ),
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end

      # New schedule for the subscription.
      module Schedule
        extend TerminalShop::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              TerminalShop::SubscriptionUpdateParams::Schedule::Fixed,
              TerminalShop::SubscriptionUpdateParams::Schedule::Weekly
            )
          end

        class Fixed < TerminalShop::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
            T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

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
            T::Array[TerminalShop::SubscriptionUpdateParams::Schedule::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
