# frozen_string_literal: true

module TerminalShop
  module Resources
    class Profile
      # Update the current user's profile.
      #
      # @param params [TerminalShop::Models::ProfileUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email
      #
      #   @option params [String] :name
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::ProfileUpdateResponse]
      def update(params)
        parsed, options = TerminalShop::Models::ProfileUpdateParams.dump_request(params)
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
      # @param params [TerminalShop::Models::ProfileMeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [TerminalShop::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [TerminalShop::Models::ProfileMeResponse]
      def me(params = {})
        @client.request(
          method: :get,
          path: "profile",
          model: TerminalShop::Models::ProfileMeResponse,
          options: params[:request_options]
        )
      end

      # @param client [TerminalShop::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
