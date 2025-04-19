# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Card#delete
    class CardDeleteResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!method initialize(data: :ok)
      #   @param data [Symbol, :ok]
    end
  end
end
