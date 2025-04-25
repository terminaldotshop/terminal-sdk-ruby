# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#create
    class CardCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute token
      #   Stripe card token. Learn how to
      #   [create one here](https://docs.stripe.com/api/tokens/create_card).
      #
      #   @return [String]
      required :token, String

      # @!method initialize(token:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::CardCreateParams} for more details.
      #
      #   @param token [String] Stripe card token. Learn how to [create one here](https://docs.stripe.com/api/to
      #   ...
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
