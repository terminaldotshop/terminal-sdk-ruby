# frozen_string_literal: true

module TerminalShop
  module Models
    class EmailCreateParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute email
      #   Email address to subscribe to Terminal updates with.
      #
      #   @return [String]
      required :email, String

      # @!parse
      #   # @param email [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
