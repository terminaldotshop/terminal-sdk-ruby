# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # app_create_response => {
    #   data: Terminal::Models::AppCreateResponse::Data
    # }
    # ```
    class AppCreateResponse < Terminal::BaseModel
      # @!attribute data
      #
      #   @return [Terminal::Models::AppCreateResponse::Data]
      required :data, -> { Terminal::Models::AppCreateResponse::Data }

      # @!parse
      #   # @param data [Terminal::Models::AppCreateResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   secret: String
      # }
      # ```
      class Data < Terminal::BaseModel
        # @!attribute id
        #   OAuth 2.0 client ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute secret
        #   OAuth 2.0 client secret.
        #
        #   @return [String]
        required :secret, String

        # @!parse
        #   # @param id [String]
        #   # @param secret [String]
        #   #
        #   def initialize(id:, secret:, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
