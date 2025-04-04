# typed: strong

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::Internal::Type::BaseModel
      # A Terminal shop user. (We have users, btw.)
      sig { returns(TerminalShop::Models::ProfileAPI::User) }
      attr_reader :user

      sig { params(user: T.any(TerminalShop::Models::ProfileAPI::User, TerminalShop::Internal::AnyHash)).void }
      attr_writer :user

      # A Terminal shop user's profile. (We have users, btw.)
      sig do
        params(user: T.any(TerminalShop::Models::ProfileAPI::User, TerminalShop::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(user:)
      end

      sig { override.returns({user: TerminalShop::Models::ProfileAPI::User}) }
      def to_hash
      end

      class User < TerminalShop::Internal::Type::BaseModel
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
          )
            .returns(T.attached_class)
        end
        def self.new(id:, email:, fingerprint:, name:, stripe_customer_id:)
        end

        sig do
          override
            .returns(
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
