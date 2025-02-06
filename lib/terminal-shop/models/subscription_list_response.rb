# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # subscription_list_response => {
    #   data: -> { TerminalShop::ArrayOf[TerminalShop::Models::SubscriptionAPI] === _1 }
    # }
    # ```
    class SubscriptionListResponse < TerminalShop::BaseModel
      # @!attribute data
      #   List of subscriptions.
      #
      #   @return [Array<TerminalShop::Models::SubscriptionAPI>]
      required :data, -> { TerminalShop::ArrayOf[TerminalShop::Models::SubscriptionAPI] }

      # @!parse
      #   # @param data [Array<TerminalShop::Models::SubscriptionAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
