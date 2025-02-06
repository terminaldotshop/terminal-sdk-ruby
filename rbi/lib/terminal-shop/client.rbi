# typed: strong

module TerminalShop
  class Client < TerminalShop::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    ENVIRONMENTS = T.let(
      {production: "https://api.terminal.shop/", sandbox: "https://sandbox.terminal.shop/"},
      T::Hash[Symbol, String]
    )

    sig { returns(String) }
    attr_reader :bearer_token

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

    sig { returns(T::Hash[String, String]) }
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
      ).void
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
