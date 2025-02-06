# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # subscription_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::SubscriptionAPI] === _1 }
    # }
    # ```
    class SubscriptionListResponse < Terminal::BaseModel
      # @!attribute data
      #   List of subscriptions.
      #
      #   @return [Array<Terminal::Models::SubscriptionAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::SubscriptionAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::SubscriptionAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
