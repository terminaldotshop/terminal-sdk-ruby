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
      #   Some parameter documentations has been truncated, see
      #   {TerminalShop::Models::AppAPI} for more details.
      #
      #   A Terminal App used for configuring an OAuth 2.0 client.
      #
      #   @param id [String] Unique object identifier. ...
      #
      #   @param name [String] Name of the app.
      #
      #   @param redirect_uri [String] Redirect URI of the app.
      #
      #   @param secret [String] OAuth 2.0 client secret of the app (obfuscated).
    end
  end
end
