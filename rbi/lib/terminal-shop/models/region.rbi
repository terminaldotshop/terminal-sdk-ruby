# typed: strong

module TerminalShop
  module Models
    # A Terminal shop user's region.
    module Region
      extend TerminalShop::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, TerminalShop::Models::Region) }
      OrSymbol = T.type_alias { T.any(Symbol, TerminalShop::Models::Region::TaggedSymbol) }

      EU = T.let(:eu, TerminalShop::Models::Region::TaggedSymbol)
      NA = T.let(:na, TerminalShop::Models::Region::TaggedSymbol)
    end
  end
end
