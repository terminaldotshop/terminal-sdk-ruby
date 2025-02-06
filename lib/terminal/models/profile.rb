# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # profile_api => {
    #   user: Terminal::Models::ProfileAPI::User
    # }
    # ```
    class ProfileAPI < Terminal::BaseModel
      # @!attribute user
      #   A Terminal shop user. (We have users, btw.)
      #
      #   @return [Terminal::Models::ProfileAPI::User]
      required :user, -> { Terminal::Models::ProfileAPI::User }

      # @!parse
      #   # A Terminal shop user's profile. (We have users, btw.)
      #   #
      #   # @param user [Terminal::Models::ProfileAPI::User]
      #   #
      #   def initialize(user:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # user => {
      #   id: String,
      #   email: String,
      #   fingerprint: String,
      #   name: String,
      #   stripe_customer_id: String
      # }
      # ```
      class User < Terminal::BaseModel
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

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
