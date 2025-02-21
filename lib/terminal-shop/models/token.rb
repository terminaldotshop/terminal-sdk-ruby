# frozen_string_literal: true

module TerminalShop
  module Models
    class TokenAPI < TerminalShop::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute token
      #   Personal access token (obfuscated).
      #
      #   @return [String]
      required :token, String

      # @!attribute time
      #   Relevant timestamps for the token.
      #
      #   @return [TerminalShop::Models::TokenAPI::Time]
      required :time, -> { TerminalShop::Models::TokenAPI::Time }

      # @!parse
      #   # A personal access token used to access the Terminal API. If you leak this,
      #   #   expect large sums of coffee to be ordered on your credit card.
      #   #
      #   # @param id [String]
      #   # @param token [String]
      #   # @param time [TerminalShop::Models::TokenAPI::Time]
      #   #
      #   def initialize(id:, token:, time:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      class Time < TerminalShop::BaseModel
        # @!attribute created
        #   The created time for the token.
        #
        #   @return [String]
        required :created, String

        # @!parse
        #   # Relevant timestamps for the token.
        #   #
        #   # @param created [String]
        #   #
        #   def initialize(created:, **) = super

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
