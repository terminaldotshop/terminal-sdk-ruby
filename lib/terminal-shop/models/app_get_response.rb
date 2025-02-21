# frozen_string_literal: true

module TerminalShop
  module Models
    class AppGetResponse < TerminalShop::BaseModel
      # @!attribute data
      #   A Terminal App used for configuring an OAuth 2.0 client.
      #
      #   @return [TerminalShop::Models::AppAPI]
      required :data, -> { TerminalShop::Models::AppAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::AppAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
