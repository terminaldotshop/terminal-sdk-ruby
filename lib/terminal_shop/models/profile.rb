# frozen_string_literal: true

module TerminalShop
  module Models
    class ProfileAPI < TerminalShop::Internal::Type::BaseModel
      # @!attribute user
      #   A Terminal shop user. (We have users, btw.)
      #
      #   @return [TerminalShop::Models::ProfileAPI::User]
      required :user, -> { TerminalShop::Models::ProfileAPI::User }

      # @!parse
      #   # A Terminal shop user's profile. (We have users, btw.)
      #   #
      #   # @param user [TerminalShop::Models::ProfileAPI::User]
      #   #
      #   def initialize(user:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void

      # @see TerminalShop::Models::ProfileAPI#user
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

        # @!parse
        #   # A Terminal shop user. (We have users, btw.)
        #   #
        #   # @param id [String]
        #   # @param email [String, nil]
        #   # @param fingerprint [String, nil]
        #   # @param name [String, nil]
        #   # @param stripe_customer_id [String]
        #   #
        #   def initialize(id:, email:, fingerprint:, name:, stripe_customer_id:, **) = super

        # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
      end
    end
  end
end
