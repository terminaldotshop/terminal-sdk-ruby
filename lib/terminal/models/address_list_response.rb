# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # address_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::AddressAPI] === _1 }
    # }
    # ```
    class AddressListResponse < Terminal::BaseModel
      # @!attribute data
      #   Shipping addresses.
      #
      #   @return [Array<Terminal::Models::AddressAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::AddressAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::AddressAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
