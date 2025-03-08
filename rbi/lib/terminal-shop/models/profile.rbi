# typed: strong

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProfileAPI::User) }
      def user
      end

      sig { params(_: TerminalShop::Models::ProfileAPI::User).returns(TerminalShop::Models::ProfileAPI::User) }
      def user=(_)
      end

      sig { params(user: TerminalShop::Models::ProfileAPI::User).returns(T.attached_class) }
      def self.new(user:)
      end

      sig { override.returns({user: TerminalShop::Models::ProfileAPI::User}) }
      def to_hash
      end

      class User < TerminalShop::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def email
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def email=(_)
        end

        sig { returns(T.nilable(String)) }
        def fingerprint
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def fingerprint=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig { returns(String) }
        def stripe_customer_id
        end

        sig { params(_: String).returns(String) }
        def stripe_customer_id=(_)
        end

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
