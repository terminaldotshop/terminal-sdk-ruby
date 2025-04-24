# typed: strong

module TerminalShop
  module Models
    # A Terminal shop user's region.
    module Region
      extend TerminalShop::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, TerminalShop::Models::Region) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EU = T.let(:eu, TerminalShop::Models::Region::TaggedSymbol)
      NA = T.let(:na, TerminalShop::Models::Region::TaggedSymbol)
      GLOBAL = T.let(:global, TerminalShop::Models::Region::TaggedSymbol)

      sig { override.returns(T::Array[TerminalShop::Models::Region::TaggedSymbol]) }
      def self.values; end
    end
  end
end
