# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Token#delete
    class TokenDeleteParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
