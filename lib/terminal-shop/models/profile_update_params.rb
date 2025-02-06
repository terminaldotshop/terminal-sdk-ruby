# frozen_string_literal: true

module TerminalShop
  module Models
    class ProfileUpdateParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute email
      #   Email address of the user.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #   Name of the user.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param email [String, nil]
      #   # @param name [String, nil]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email: nil, name: nil, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
