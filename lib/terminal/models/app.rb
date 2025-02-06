# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # app_api => {
    #   id: String,
    #   name: String,
    #   redirect_uri: String
    # }
    # ```
    class AppAPI < Terminal::BaseModel
      # @!attribute id
      #   Unique object identifier. The format and length of IDs may change over time.
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   Name of the app.
      #
      #   @return [String]
      required :name, String

      # @!attribute redirect_uri
      #   Redirect URI of the app.
      #
      #   @return [String]
      required :redirect_uri, String, api_name: :redirectURI

      # @!parse
      #   # A Terminal App used for configuring an OAuth 2.0 client.
      #   #
      #   # @param id [String]
      #   # @param name [String]
      #   # @param redirect_uri [String]
      #   #
      #   def initialize(id:, name:, redirect_uri:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
