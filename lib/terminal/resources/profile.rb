# frozen_string_literal: true

module Terminal
  module Resources
    class Profile
      # Update the current user's profile.
      #
      # @param params [Terminal::Models::ProfileUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :email Email address of the user.
      #
      #   @option params [String, nil] :name Name of the user.
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::ProfileUpdateResponse]
      #
      def update(params = {})
        parsed, options = Terminal::Models::ProfileUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: "profile",
          body: parsed,
          model: Terminal::Models::ProfileUpdateResponse,
          options: options
        )
      end

      # Get the current user's profile.
      #
      # @param params [Terminal::Models::ProfileMeParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Terminal::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Terminal::Models::ProfileMeResponse]
      #
      def me(params = {})
        @client.request(
          method: :get,
          path: "profile",
          model: Terminal::Models::ProfileMeResponse,
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
