# typed: strong

module TerminalShop
  class Client < TerminalShop::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS = T.let(
      {production: "https://api.terminal.shop/", dev: "https://api.dev.terminal.shop/"},
      T::Hash[Symbol, String]
    )

    sig { returns(String) }
    def bearer_token
    end

    sig { returns(TerminalShop::Resources::Product) }
    def product
    end

    sig { returns(TerminalShop::Resources::Profile) }
    def profile
    end

    sig { returns(TerminalShop::Resources::Address) }
    def address
    end

    sig { returns(TerminalShop::Resources::Card) }
    def card
    end

    sig { returns(TerminalShop::Resources::Cart) }
    def cart
    end

    sig { returns(TerminalShop::Resources::Order) }
    def order
    end

    sig { returns(TerminalShop::Resources::Subscription) }
    def subscription
    end

    sig { returns(TerminalShop::Resources::Token) }
    def token
    end

    sig { returns(TerminalShop::Resources::App) }
    def app
    end

    sig { returns(TerminalShop::Resources::Email) }
    def email
    end

    sig { returns(TerminalShop::Resources::View) }
    def view
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        environment: NilClass,
        base_url: T.nilable(String),
        bearer_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .void
    end
    def initialize(
      environment: nil,
      base_url: nil,
      bearer_token: ENV["TERMINAL_BEARER_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
