# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Order#create
    class OrderCreateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Order ID.
      #
      #   @return [String]
      required :data, String

      # @!method initialize(data:)
      #   @param data [String] Order ID.
    end
  end
end
