# frozen_string_literal: true

module TerminalShop
  module Resources
    class Address
      # Create and add a shipping address to the current user.
      #
      # @overload create(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil, request_options: {})
      #
      # @param city [String] City of the address.
      #
      # @param country [String] ISO 3166-1 alpha-2 country code of the address.
      #
      # @param name [String] The recipient's name.
      #
      # @param street1 [String] Street of the address.
      #
      # @param zip [String] Zip code of the address.
      #
      # @param phone [String] Phone number of the recipient.
      #
      # @param province [String] Province or state of the address.
      #
      # @param street2 [String] Apartment, suite, etc. of the address.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::AddressCreateResponse]
      #
      # @see TerminalShop::Models::AddressCreateParams
      def create(params)
        parsed, options = TerminalShop::AddressCreateParams.dump_request(params)
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
      # @overload list(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload delete(id, request_options: {})
      #
      # @param id [String] ID of the shipping address to delete.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @overload get(id, request_options: {})
      #
      # @param id [String] ID of the shipping address to get.
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
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
