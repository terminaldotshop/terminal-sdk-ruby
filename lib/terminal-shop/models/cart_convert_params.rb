# frozen_string_literal: true

module TerminalShop
  module Models
    class CartConvertParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute [r] recipient_email
      #
      #   @return [String, nil]
      optional :recipient_email, String, api_name: :recipientEmail

      # @!parse
      #   # @return [String]
      #   attr_writer :recipient_email

      # @!parse
      #   # @param recipient_email [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(recipient_email: nil, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
