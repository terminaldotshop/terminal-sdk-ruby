# frozen_string_literal: true

module TerminalShop
  module Models
    class TokenAPI < TerminalShop::Internal::Type::BaseModel
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

      # @!method initialize(id:, token:, created:)
      #   Some parameter documentations has been truncated, see {TerminalShop::TokenAPI}
      #   for more details.
      #
      #   A personal access token used to access the Terminal API. If you leak this,
      #   expect large sums of coffee to be ordered on your credit card.
      #
      #   @param id [String] Unique object identifier.
      #
      #   @param token [String] Personal access token (obfuscated).
      #
      #   @param created [String] The created time for the token.
    end
  end
end
