# frozen_string_literal: true

module TerminalShop
  module Models
    class AddressDeleteParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!parse
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
