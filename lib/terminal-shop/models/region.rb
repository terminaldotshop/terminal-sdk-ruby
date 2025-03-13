# frozen_string_literal: true

module TerminalShop
  module Models
    # @abstract
    #
    # A Terminal shop user's region.
    class Region < TerminalShop::Enum
      EU = :eu
      NA = :na

      finalize!
    end
  end
end
