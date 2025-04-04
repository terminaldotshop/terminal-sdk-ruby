# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#create
    class AppCreateParams < TerminalShop::BaseModel
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

      # @!parse
      #   # @param name [String]
      #   # @param redirect_uri [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, redirect_uri:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
