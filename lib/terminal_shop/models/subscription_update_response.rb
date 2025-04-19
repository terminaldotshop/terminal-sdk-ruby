# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#update
    class SubscriptionUpdateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Subscription to a Terminal shop product.
      #
      #   @return [TerminalShop::Models::SubscriptionAPI]
      required :data, -> { TerminalShop::Models::SubscriptionAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::SubscriptionAPI]
    end
  end
end
