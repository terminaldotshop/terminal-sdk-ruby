# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#get
    class CardGetParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute id
      #   ID of the card to get.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String] ID of the card to get.
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
