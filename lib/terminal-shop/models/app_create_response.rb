# frozen_string_literal: true

module TerminalShop
  module Models
    # @example
    # ```ruby
    # app_create_response => {
    #   data: TerminalShop::Models::AppCreateResponse::Data
    # }
    # ```
    class AppCreateResponse < TerminalShop::BaseModel
      # @!attribute data
      #
      #   @return [TerminalShop::Models::AppCreateResponse::Data]
      required :data, -> { TerminalShop::Models::AppCreateResponse::Data }

      # @!parse
      #   # @param data [TerminalShop::Models::AppCreateResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | TerminalShop::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   secret: String
      # }
      # ```
      class Data < TerminalShop::BaseModel
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

        # def initialize: (Hash | TerminalShop::BaseModel) -> void
      end
    end
  end
end
