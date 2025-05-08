# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#list
    class TokenListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of personal access tokens.
      #
      #   @return [Array<TerminalShop::TokenAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::TokenAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::TokenAPI>] List of personal access tokens.
    end
  end
end
