# typed: strong

module TerminalShop
  module Models
    # A Terminal shop user's region.
    class Region < TerminalShop::Enum
      abstract!

      EU = :eu
      NA = :na

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
