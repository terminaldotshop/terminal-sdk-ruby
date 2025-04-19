# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::Email#create
    class EmailCreateParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address to subscribe to Terminal updates with.
      #
      #   @return [String]
      required :email, String

      # @!method initialize(email:, request_options: {})
      #   @param email [String]
      #   @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
