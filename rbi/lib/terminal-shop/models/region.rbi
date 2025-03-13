# typed: strong

module TerminalShop
  module Models
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
