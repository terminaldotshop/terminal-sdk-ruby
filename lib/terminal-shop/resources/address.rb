# frozen_string_literal: true

module TerminalShop
  module Resources
    class Address
      # Create and add a shipping address to the current user.
      #
      # @overload create(city:, country:, name:, street1:, zip:, phone: nil, province: nil, street2: nil, request_options: {})
      #
      # @param city [String]
      # @param country [String]
      # @param name [String]
      # @param street1 [String]
      # @param zip [String]
      # @param phone [String]
      # @param province [String]
      # @param street2 [String]
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
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
      # @param id [String]
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
      # @param id [String]
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
