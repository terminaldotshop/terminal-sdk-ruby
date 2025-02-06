# typed: strong

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProfileAPI::User) }
      attr_accessor :user

      sig { params(user: TerminalShop::Models::ProfileAPI::User).void }
      def initialize(user:)
      end

      sig { override.returns({user: TerminalShop::Models::ProfileAPI::User}) }
      def to_hash
      end

      class User < TerminalShop::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :fingerprint

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :stripe_customer_id

        sig do
          params(
            id: String,
            email: T.nilable(String),
            fingerprint: T.nilable(String),
            name: T.nilable(String),
            stripe_customer_id: String
          ).void
        end
        def initialize(id:, email:, fingerprint:, name:, stripe_customer_id:)
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
