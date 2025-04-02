# frozen_string_literal: true

module TerminalShop
  module Resources
    class Address
      # Create and add a shipping address to the current user.
      #
      # @param params [TerminalShop::Models::AddressCreateParams, Hash{Symbol=>Object}] .
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
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::AddressCreateResponse]
      #
      # @see TerminalShop::Models::AddressCreateParams
      def create(params)
        parsed, options = TerminalShop::Models::AddressCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "address",
          body: parsed,
          model: TerminalShop::Models::AddressCreateResponse,
          options: options
        )
      end

      # Get the shipping addresses associated with the current user.
      #
      # @param params [TerminalShop::Models::AddressListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::AddressListResponse]
      #
      # @see TerminalShop::Models::AddressListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "address",
          model: TerminalShop::Models::AddressListResponse,
          options: params[:request_options]
        )
      end

      # Delete a shipping address from the current user.
      #
      # @param id [String] ID of the shipping address to delete.
      #
      # @param params [TerminalShop::Models::AddressDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::AddressDeleteResponse]
      #
      # @see TerminalShop::Models::AddressDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["address/%1$s", id],
          model: TerminalShop::Models::AddressDeleteResponse,
          options: params[:request_options]
        )
      end

      # Get the shipping address with the given ID.
      #
      # @param id [String] ID of the shipping address to get.
      #
      # @param params [TerminalShop::Models::AddressGetParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::AddressGetResponse]
      #
      # @see TerminalShop::Models::AddressGetParams
      def get(id, params = {})
        @client.request(
          method: :get,
          path: ["address/%1$s", id],
          model: TerminalShop::Models::AddressGetResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [TerminalShop::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
