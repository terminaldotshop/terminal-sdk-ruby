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

      # @!method initialize(data:)
      #   @param data [Array<TerminalShop::Models::AppAPI>] List of apps.
    end
  end
end
