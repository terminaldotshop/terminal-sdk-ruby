# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # token_create_response => {
    #   data: Terminal::Models::TokenCreateResponse::Data
    # }
    # ```
    class TokenCreateResponse < Terminal::BaseModel
      # @!attribute data
      #
      #   @return [Terminal::Models::TokenCreateResponse::Data]
      required :data, -> { Terminal::Models::TokenCreateResponse::Data }

      # @!parse
      #   # @param data [Terminal::Models::TokenCreateResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   id: String,
      #   token: String
      # }
      # ```
      class Data < Terminal::BaseModel
        # @!attribute id
        #   Personal token ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute token
        #   Personal access token. Include this in the Authorization header
        #     (`Bearer <token>`) when accessing the Terminal API.
        #
        #   @return [String]
        required :token, String

        # @!parse
        #   # @param id [String]
        #   # @param token [String]
        #   #
        #   def initialize(id:, token:, **) = super

        # def initialize: (Hash | Terminal::BaseModel) -> void
      end
    end
  end
end
