# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # card_collect_response => {
    #   data: Terminal::Models::CardCollectResponse::Data
    # }
    # ```
    class CardCollectResponse < Terminal::BaseModel
      # @!attribute data
      #   URL for collecting card information.
      #
      #   @return [Terminal::Models::CardCollectResponse::Data]
      required :data, -> { Terminal::Models::CardCollectResponse::Data }

      # @!parse
      #   # @param data [Terminal::Models::CardCollectResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   url: String
      # }
      # ```
      class Data < Terminal::BaseModel
        # @!attribute url
        #   Temporary URL that allows a user to enter credit card details over https at
        #     terminal.shop.
        #
        #   @return [String]
        required :url, String

        # @!parse
        #   # URL for collecting card information.
        #   #
        #   # @param url [String]
        #   #
        #   def initialize(url:, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
