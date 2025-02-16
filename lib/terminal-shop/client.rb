# frozen_string_literal: true

module TerminalShop
  class Client < TerminalShop::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # rubocop:disable Style/MutableConstant
    ENVIRONMENTS = {production: "https://api.terminal.shop/", dev: "https://api.dev.terminal.shop/"}
    # rubocop:enable Style/MutableConstant

    # Client option
    # @return [String]
    attr_reader :bearer_token

    # @return [TerminalShop::Resources::Product]
    attr_reader :product

    # @return [TerminalShop::Resources::Profile]
    attr_reader :profile

    # @return [TerminalShop::Resources::Address]
    attr_reader :address

    # @return [TerminalShop::Resources::Card]
    attr_reader :card

    # @return [TerminalShop::Resources::Cart]
    attr_reader :cart

    # @return [TerminalShop::Resources::Order]
    attr_reader :order

    # @return [TerminalShop::Resources::Subscription]
    attr_reader :subscription

    # @return [TerminalShop::Resources::Token]
    attr_reader :token

    # @return [TerminalShop::Resources::App]
    attr_reader :app

    # @return [TerminalShop::Resources::Email]
    attr_reader :email

    # @return [TerminalShop::Resources::View]
    attr_reader :view

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_headers
      return {} if @bearer_token.nil?

      {"Authorization" => "Bearer #{@bearer_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param environment [:production, :dev, nil] Specifies the environment to use for the API.
    #
    #   Each environment maps to a different base URL:
    #
    #   - `production` corresponds to `https://api.terminal.shop/`
    #   - `dev` corresponds to `https://api.dev.terminal.shop/`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param bearer_token [String, nil] Defaults to `ENV["TERMINAL_BEARER_TOKEN"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      environment: nil,
      base_url: nil,
      bearer_token: ENV["TERMINAL_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      case [environment, base_url]
      in [Symbol | String, String]
        raise ArgumentError.new("both environment and base_url given, expected only one")
      in [Symbol | String, nil]
        base_url = ENVIRONMENTS.fetch(environment.to_sym) do
          raise ArgumentError.new("environment must be one of #{ENVIRONMENTS.keys}, got #{environment}")
        end
      else
        base_url ||= ENVIRONMENTS.fetch(:production)
      end

      if bearer_token.nil?
        raise ArgumentError.new("bearer_token is required")
      end

      @bearer_token = bearer_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @product = TerminalShop::Resources::Product.new(client: self)
      @profile = TerminalShop::Resources::Profile.new(client: self)
      @address = TerminalShop::Resources::Address.new(client: self)
      @card = TerminalShop::Resources::Card.new(client: self)
      @cart = TerminalShop::Resources::Cart.new(client: self)
      @order = TerminalShop::Resources::Order.new(client: self)
      @subscription = TerminalShop::Resources::Subscription.new(client: self)
      @token = TerminalShop::Resources::Token.new(client: self)
      @app = TerminalShop::Resources::App.new(client: self)
      @email = TerminalShop::Resources::Email.new(client: self)
      @view = TerminalShop::Resources::View.new(client: self)
    end
  end
end
