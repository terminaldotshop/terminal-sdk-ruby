# typed: strong

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

      # A Terminal shop user. (We have users, btw.)
      sig { returns(TerminalShop::ProfileAPI::User) }
      attr_reader :user

      sig { params(user: TerminalShop::ProfileAPI::User::OrHash).void }
      attr_writer :user

      # A Terminal shop user's profile. (We have users, btw.)
      sig do
        params(user: TerminalShop::ProfileAPI::User::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A Terminal shop user. (We have users, btw.)
        user:
      )
      end

      sig { override.returns({ user: TerminalShop::ProfileAPI::User }) }
      def to_hash
      end

      class User < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, TerminalShop::Internal::AnyHash) }

        # Unique object identifier. The format and length of IDs may change over time.
        sig { returns(String) }
        attr_accessor :id

        # Email address of the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # The user's fingerprint, derived from their public SSH key.
        sig { returns(T.nilable(String)) }
        attr_accessor :fingerprint

        # Name of the user.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Stripe customer ID of the user.
        sig { returns(String) }
        attr_accessor :stripe_customer_id

        # A Terminal shop user. (We have users, btw.)
        sig do
          params(
            id: String,
            email: T.nilable(String),
            fingerprint: T.nilable(String),
            name: T.nilable(String),
            stripe_customer_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique object identifier. The format and length of IDs may change over time.
          id:,
          # Email address of the user.
          email:,
          # The user's fingerprint, derived from their public SSH key.
          fingerprint:,
          # Name of the user.
          name:,
          # Stripe customer ID of the user.
          stripe_customer_id:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email: T.nilable(String),
              fingerprint: T.nilable(String),
              name: T.nilable(String),
              stripe_customer_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
