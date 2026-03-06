# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#delete
    class CardDeleteParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute id
      #   ID of the card to delete.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String] ID of the card to delete.
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
