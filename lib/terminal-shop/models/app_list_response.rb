# frozen_string_literal: true

module TerminalShop
  module Models
    class AppListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   List of apps.
      #
      #   @return [Array<TerminalShop::Models::AppAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::AppAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::AppAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
