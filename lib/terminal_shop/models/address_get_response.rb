# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Address#get
    class AddressGetResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #   Physical address associated with a Terminal shop user.
      #
      #   @return [TerminalShop::Models::AddressAPI]
      required :data, -> { TerminalShop::Models::AddressAPI }

      # @!parse
      #   # @param data [TerminalShop::Models::AddressAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::Internal::Type::BaseModel) -> void
    end
  end
end
