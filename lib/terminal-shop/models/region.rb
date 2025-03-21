# frozen_string_literal: true

module TerminalShop
  module Models
    # A Terminal shop user's region.
    module Region
      extend TerminalShop::Enum

      EU = :eu
      NA = :na

      finalize!
    end
  end
end
