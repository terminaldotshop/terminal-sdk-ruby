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
      required :data, -> { TerminalShop::Models::TokenAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::TokenAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
