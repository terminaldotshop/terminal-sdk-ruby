# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # app_get_response => {
    #   data: Terminal::Models::AppAPI
    # }
    # ```
    class AppGetResponse < Terminal::BaseModel
      # @!attribute data
      #   A Terminal App used for configuring an OAuth 2.0 client.
      #
      #   @return [Terminal::Models::AppAPI]
      required :data, -> { Terminal::Models::AppAPI }

      # @!parse
      #   # @param data [Terminal::Models::AppAPI]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
