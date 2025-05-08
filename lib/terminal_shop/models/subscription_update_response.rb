# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#update
    class SubscriptionUpdateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Subscription to a Terminal shop product.
      #
      #   @return [TerminalShop::SubscriptionAPI]
      required :data, -> { TerminalShop::SubscriptionAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::SubscriptionAPI] Subscription to a Terminal shop product.
    end
  end
end
