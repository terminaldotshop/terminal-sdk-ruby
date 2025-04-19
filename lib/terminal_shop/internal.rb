# frozen_string_literal: true

module TerminalShop
  module Internal
    OMIT =
      Object.new.tap do
        _1.define_singleton_method(:inspect) { "#<#{TerminalShop::Internal}::OMIT>" }
      end
        .freeze
  end
end
