# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#list
    class AppListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of apps.
      #
      #   @return [Array<TerminalShop::Models::AppAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::AppAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::AppAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
