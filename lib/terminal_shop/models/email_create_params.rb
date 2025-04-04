# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Email#create
    class EmailCreateParams < TerminalShop::Internal::Type::BaseModel
      # @!parse
      #   extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

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

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
