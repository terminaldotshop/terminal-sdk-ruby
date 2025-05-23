# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#create
    class TokenCreateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [TerminalShop::Models::TokenCreateResponse::Data]
      required :data, -> { TerminalShop::Models::TokenCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::TokenCreateResponse::Data]

      # @see TerminalShop::Models::TokenCreateResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
        # @!attribute id
        #   Personal token ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute token
        #   Personal access token. Include this in the Authorization header
        #   (`Bearer <token>`) when accessing the Terminal API.
        #
        #   @return [String]
        required :token, String

        # @!method initialize(id:, token:)
        #   Some parameter documentations has been truncated, see
        #   {TerminalShop::Models::TokenCreateResponse::Data} for more details.
        #
        #   @param id [String] Personal token ID.
        #
        #   @param token [String] Personal access token. Include this in the Authorization header (`Bearer <token>
      end
    end
  end
end
