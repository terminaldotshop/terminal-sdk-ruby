# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Profile#update
    class ProfileUpdateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!method initialize(email:, name:, request_options: {})
      #   @param email [String]
      #   @param name [String]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
