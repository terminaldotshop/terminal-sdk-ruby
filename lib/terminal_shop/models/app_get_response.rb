# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#get
    class AppGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   A Terminal App used for configuring an OAuth 2.0 client.
      #
      #   @return [TerminalShop::Models::AppAPI]
      required :data, -> { TerminalShop::AppAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::AppAPI] A Terminal App used for configuring an OAuth 2.0 client.
    end
  end
end
