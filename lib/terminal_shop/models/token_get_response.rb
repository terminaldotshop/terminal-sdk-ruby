# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#get
    class TokenGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   A personal access token used to access the Terminal API. If you leak this,
      #   expect large sums of coffee to be ordered on your credit card.
      #
      #   @return [TerminalShop::Models::TokenAPI]
      required :data, -> { TerminalShop::TokenAPI }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::TokenGetResponse} for more details.
      #
      #   @param data [TerminalShop::Models::TokenAPI] A personal access token used to access the Terminal API. If you leak this, expec
    end
  end
end
