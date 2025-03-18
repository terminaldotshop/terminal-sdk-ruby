# typed: strong

module TerminalShop
  module Models
    # A Terminal shop user's region.
    class Region < TerminalShop::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      EU = :eu
      NA = :na
    end
  end
end
