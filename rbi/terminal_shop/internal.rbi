# typed: strong

module TerminalShop
  module Internal
    extend TerminalShop::Internal::Util::SorbetRuntimeSupport

    # Due to the current WIP status of Shapes support in Sorbet, types referencing
    # this alias might be refined in the future.
    AnyHash = T.type_alias { T::Hash[Symbol, T.anything] }

    FileInput =
      T.type_alias do
        T.any(Pathname, StringIO, IO, String, TerminalShop::FilePart)
      end

    OMIT = T.let(Object.new.freeze, T.anything)
  end
end
