# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # email_create_response => {
    #   data: :ok
    # }
    # ```
    class EmailCreateResponse < TerminalShop::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!parse
      #   # @param data [Symbol, :ok]
      #   #
      #   def initialize(data: :ok, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void
    end
  end
end
