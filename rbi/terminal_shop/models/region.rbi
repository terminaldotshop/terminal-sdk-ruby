# typed: strong

module TerminalShop
  module Models
    # A Terminal shop user's region.
    module Region
      extend TerminalShop::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, TerminalShop::Region) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EU = T.let(:eu, TerminalShop::Region::TaggedSymbol)
      NA = T.let(:na, TerminalShop::Region::TaggedSymbol)
      GLOBAL = T.let(:global, TerminalShop::Region::TaggedSymbol)

      sig { override.returns(T::Array[TerminalShop::Region::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
