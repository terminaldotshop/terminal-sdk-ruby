# frozen_string_literal: true

module TerminalShop
  module Models
    class AppAPI < TerminalShop::Internal::Type::BaseModel
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

      # @!attribute secret
      #   OAuth 2.0 client secret of the app (obfuscated).
      #
      #   @return [String]
      required :secret, String

      # @!method initialize(id:, name:, redirect_uri:, secret:)
      #   A Terminal App used for configuring an OAuth 2.0 client.
      #
      #   @param id [String]
      #   @param name [String]
      #   @param redirect_uri [String]
      #   @param secret [String]
    end
  end
end
