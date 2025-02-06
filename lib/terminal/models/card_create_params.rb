# frozen_string_literal: true

module Terminal
  module Models
    class CardCreateParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute token
      #   Stripe card token. Learn how to
      #     [create one here](https://docs.stripe.com/api/tokens/create_card).
      #
      #   @return [String]
      required :token, String

      # @!parse
      #   # @param token [String]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(token:, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
