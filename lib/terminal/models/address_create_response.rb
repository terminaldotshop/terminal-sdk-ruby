# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # address_create_response => {
    #   data: String
    # }
    # ```
    class AddressCreateResponse < Terminal::BaseModel
      # @!attribute data
      #   Shipping address ID.
      #
      #   @return [String]
      required :data, String

      # @!parse
      #   # @param data [String]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
