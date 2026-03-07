# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#delete
    class SubscriptionDeleteParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute id
      #   ID of the subscription to cancel.
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String] ID of the subscription to cancel.
      #
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
