# frozen_string_literal: true

module Terminal
  module Models
    class EmailCreateParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute email
      #   Email address to subscribe to Terminal updates with.
      #
      #   @return [String]
      required :email, String

      # @!parse
      #   # @param email [String]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email:, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
