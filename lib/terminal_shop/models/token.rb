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

      # @!attribute created
      #   The created time for the token.
      #
      #   @return [String]
      required :created, String

      # @!parse
      #   # A personal access token used to access the Terminal API. If you leak this,
      #   #   expect large sums of coffee to be ordered on your credit card.
      #   #
      #   # @param id [String]
      #   # @param token [String]
      #   # @param created [String]
      #   #
      #   def initialize(id:, token:, created:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
