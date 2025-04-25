# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#list
    class TokenListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of personal access tokens.
      #
      #   @return [Array<TerminalShop::Models::TokenAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::TokenAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::TokenAPI>] List of personal access tokens.
    end
  end
end
