# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # address_delete_response => {
    #   data: :ok
    # }
    # ```
    class AddressDeleteResponse < Terminal::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!parse
      #   # @param data [Symbol, :ok]
      #   #
      #   def initialize(data: :ok, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
