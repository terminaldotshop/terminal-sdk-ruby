# frozen_string_literal: true

module TerminalShop
  module Models
    # @see TerminalShop::Resources::App#create
    class AppCreateResponse < TerminalShop::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [TerminalShop::Models::AppCreateResponse::Data]
      required :data, -> { TerminalShop::Models::AppCreateResponse::Data }

      # @!method initialize(data:)
      #   @param data [TerminalShop::Models::AppCreateResponse::Data]

      # @see TerminalShop::Models::AppCreateResponse#data
      class Data < TerminalShop::Internal::Type::BaseModel
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

        # @!method initialize(id:, secret:)
        #   @param id [String]
        #   @param secret [String]
      end
    end
  end
end
