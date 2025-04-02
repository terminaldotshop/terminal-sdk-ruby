# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#list
    class TokenListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   List of personal access tokens.
      #
      #   @return [Array<TerminalShop::Models::TokenAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::TokenAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::TokenAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
