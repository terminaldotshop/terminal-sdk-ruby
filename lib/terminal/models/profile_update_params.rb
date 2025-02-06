# frozen_string_literal: true

module Terminal
  module Models
    class ProfileUpdateParams < Terminal::BaseModel
      # @!parse
      #   extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      # @!attribute email
      #   Email address of the user.
      #
      #   @return [String, nil]
      optional :email, String, nil?: true

      # @!attribute name
      #   Name of the user.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param email [String, nil]
      #   # @param name [String, nil]
      #   # @param request_options [Terminal::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(email: nil, name: nil, request_options: {}, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
