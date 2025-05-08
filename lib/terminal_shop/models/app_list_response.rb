# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#list
    class AppListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of apps.
      #
      #   @return [Array<TerminalShop::AppAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::AppAPI] }

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::AppAPI>] List of apps.
    end
  end
end
