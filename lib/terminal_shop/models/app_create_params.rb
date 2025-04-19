# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#create
    class AppCreateParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute redirect_uri
      #
      #   @return [String]
      required :redirect_uri, String, api_name: :redirectURI

      # @!method initialize(name:, redirect_uri:, request_options: {})
      #   @param name [String]
      #   @param redirect_uri [String]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
