# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Profile#update
    class ProfileUpdateParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param email [String]
      #   # @param name [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email:, name:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
