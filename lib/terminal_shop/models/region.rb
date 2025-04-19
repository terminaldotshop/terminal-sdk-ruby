# frozen_string_literal: true

module TerminalShop
  module Models
    # A Terminal shop user's region.
    module Region
      extend TerminalShop::Internal::Type::Enum

      EU = :eu
      NA = :na

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
