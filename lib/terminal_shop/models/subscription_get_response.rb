# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Subscription#get
    class SubscriptionGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Subscription to a Terminal shop product.
      #
      #   @return [TerminalShop::Models::SubscriptionAPI]
      required :data, -> { TerminalShop::SubscriptionAPI }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::SubscriptionAPI] Subscription to a Terminal shop product.
    end
  end
end
