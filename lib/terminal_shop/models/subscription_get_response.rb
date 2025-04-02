# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#get
    class SubscriptionGetResponse < TerminalShop::BaseModel
      # @!attribute data
      #   Subscription to a Terminal shop product.
      #
      #   @return [TerminalShop::Models::SubscriptionAPI]
      required :data, -> { TerminalShop::Models::SubscriptionAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::SubscriptionAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
