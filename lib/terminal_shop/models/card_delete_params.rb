# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#delete
    class CardDeleteParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
