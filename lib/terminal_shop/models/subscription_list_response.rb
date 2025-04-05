# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#list
    class SubscriptionListResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   List of subscriptions.
      #
      #   @return [Array<TerminalShop::Models::SubscriptionAPI>]
      required :data, -> { TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::SubscriptionAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::SubscriptionAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
