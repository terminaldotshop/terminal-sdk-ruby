# frozen_string_literal: true

module TerminalShop
  module Resources
    class Profile
      # Update the current user's profile.
      #
      # @overload update(email:, name:, request_options: {})
      #
      # @param email [String]
      # @param name [String]
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::ProfileUpdateResponse]
      #
      # @see TerminalShop::Models::ProfileUpdateParams
      def update(params)
        parsed, options = TerminalShop::ProfileUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: "profile",
          body: parsed,
          model: TerminalShop::Models::ProfileUpdateResponse,
          options: options
        )
      end

      # Get the current user's profile.
      #
      # @overload me(request_options: {})
      #
      # @param request_options [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [TerminalShop::Models::ProfileMeResponse]
      #
      # @see TerminalShop::Models::ProfileMeParams
      def me(params = {})
        @client.request(
          method: :get,
          path: "profile",
          model: TerminalShop::Models::ProfileMeResponse,
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
