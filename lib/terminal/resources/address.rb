# frozen_string_literal: true

module Terminal
  module Resources
    class Address
      # Create and add a shipping address to the current user.
      #
      # @param params [Terminal::Models::AddressCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :city City of the address.
      #
      #   @option params [String] :country ISO 3166-1 alpha-2 country code of the address.
      #
      #   @option params [String] :name The recipient's name.
      #
      #   @option params [String] :street1 Street of the address.
      #
      #   @option params [String] :zip Zip code of the address.
      #
      #   @option params [String] :phone Phone number of the recipient.
      #
      #   @option params [String] :province Province or state of the address.
      #
      #   @option params [String] :street2 Apartment, suite, etc. of the address.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AddressCreateResponse]
      #
      def create(params)
        parsed, options = Terminal::Models::AddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "address",
          body: parsed,
          model: Terminal::Models::AddressCreateResponse,
          options: options
        )
      end

      # Get the shipping addresses associated with the current user.
      #
      # @param params [Terminal::Models::AddressListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AddressListResponse]
      #
      def list(params = {})
        @client.request(
          method: :get,
          path: "address",
          model: Terminal::Models::AddressListResponse,
          options: params[:request_options]
        )
      end

      # Delete a shipping address from the current user.
      #
      # @param id [String] ID of the shipping address to delete.
      #
      # @param params [Terminal::Models::AddressDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::AddressDeleteResponse]
      #
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["address/%0s", id],
          model: Terminal::Models::AddressDeleteResponse,
          options: params[:request_options]
        )
      end

      # @param client [Terminal::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
