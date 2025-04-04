# typed: strong

module TerminalShop
  class Client < TerminalShop::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS =
      T.let(
        {production: "https://api.terminal.shop", dev: "https://api.dev.terminal.shop"},
        T::Hash[Symbol, String]
      )

    sig { returns(String) }
    attr_reader :bearer_token

    sig { returns(T.nilable(String)) }
    attr_reader :app_id

    sig { returns(TerminalShop::Resources::Product) }
    attr_reader :product

    sig { returns(TerminalShop::Resources::Profile) }
    attr_reader :profile

    sig { returns(TerminalShop::Resources::Address) }
    attr_reader :address

    sig { returns(TerminalShop::Resources::Card) }
    attr_reader :card

    sig { returns(TerminalShop::Resources::Cart) }
    attr_reader :cart

    sig { returns(TerminalShop::Resources::Order) }
    attr_reader :order

    sig { returns(TerminalShop::Resources::Subscription) }
    attr_reader :subscription

    sig { returns(TerminalShop::Resources::Token) }
    attr_reader :token

    sig { returns(TerminalShop::Resources::App) }
    attr_reader :app

    sig { returns(TerminalShop::Resources::Email) }
    attr_reader :email

    sig { returns(TerminalShop::Resources::View) }
    attr_reader :view

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        bearer_token: T.nilable(String),
        app_id: T.nilable(String),
        environment: NilClass,
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["TERMINAL_BEARER_TOKEN"]`
      bearer_token: ENV["TERMINAL_BEARER_TOKEN"],
      app_id: nil,
      # Specifies the environment to use for the API.
      #
      #   Each environment maps to a different base URL:
      #
      #   - `production` corresponds to `https://api.terminal.shop`
      #   - `dev` corresponds to `https://api.dev.terminal.shop`
      environment: nil,
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
