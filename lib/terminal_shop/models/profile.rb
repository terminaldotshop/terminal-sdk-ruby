# frozen_string_literal: true

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute user
      #   A Terminal shop user. (We have users, btw.)
      #
      #   @return [TerminalShop::ProfileAPI::User]
      required :user, -> { TerminalShop::ProfileAPI::User }

      # @!method initialize(user:)
      #   A Terminal shop user's profile. (We have users, btw.)
      #
      #   @param user [TerminalShop::ProfileAPI::User] A Terminal shop user. (We have users, btw.)

      # @see TerminalShop::ProfileAPI#user
      class User < TerminalShop::Internal::Type::BaseModel
        # @!attribute id
        #   Unique object identifier. The format and length of IDs may change over time.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   Email address of the user.
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute fingerprint
        #   The user's fingerprint, derived from their public SSH key.
        #
        #   @return [String, nil]
        required :fingerprint, String, nil?: true

        # @!attribute name
        #   Name of the user.
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute stripe_customer_id
        #   Stripe customer ID of the user.
        #
        #   @return [String]
        required :stripe_customer_id, String, api_name: :stripeCustomerID

        # @!method initialize(id:, email:, fingerprint:, name:, stripe_customer_id:)
        #   Some parameter documentations has been truncated, see
        #   {TerminalShop::ProfileAPI::User} for more details.
        #
        #   A Terminal shop user. (We have users, btw.)
        #
        #   @param id [String] Unique object identifier.
        #
        #   @param email [String, nil] Email address of the user.
        #
        #   @param fingerprint [String, nil] The user's fingerprint, derived from their public SSH key.
        #
        #   @param name [String, nil] Name of the user.
        #
        #   @param stripe_customer_id [String] Stripe customer ID of the user.
      end
    end
  end
end
