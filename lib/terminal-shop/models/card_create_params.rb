# frozen_string_literal: true

module TerminalShop
  module Models
    class CardCreateParams < TerminalShop::BaseModel
      # @!parse
      #   extend TerminalShop::Type::RequestParameters::Converter
      include TerminalShop::RequestParameters

      # @!attribute token
      #   Stripe card token. Learn how to
      #     [create one here](https://docs.stripe.com/api/tokens/create_card).
      #
      #   @return [String]
      required :token, String

      # @!parse
      #   # @param token [String]
      #   # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, request_options: {}, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
