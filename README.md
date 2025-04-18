# Terminal Ruby API library

The Terminal Ruby library provides convenient access to the Terminal REST API from any Ruby 3.1.0+ application.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for releases of this gem can be found [on RubyDoc](https://gemdocs.org/gems/terminal-shop).

The REST API documentation can be found on [terminal.shop](https://terminal.shop/docs).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

<!-- x-release-please-start-version -->

```ruby
gem "terminal-shop", "~> 3.2.0"
```

<!-- x-release-please-end -->

## Usage

```ruby
require "bundler/setup"
require "terminal_shop"

terminal = TerminalShop::Client.new(
  bearer_token: "My Bearer Token", # defaults to ENV["TERMINAL_BEARER_TOKEN"]
  environment: "dev" # defaults to "production"
)

products = terminal.product.list

puts(products.data)
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `TerminalShop::Errors::APIError` will be thrown:

```ruby
begin
  product = terminal.product.list
rescue TerminalShop::Errors::APIError => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
terminal = TerminalShop::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
terminal.product.list(request_options: {max_retries: 5})
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
terminal = TerminalShop::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
terminal.product.list(request_options: {timeout: 5})
```

## LSP Support

### Solargraph

This library includes [Solargraph](https://solargraph.org) support for both auto completion and go to definition.

```ruby
gem "solargraph", group: :development
```

After Solargraph is installed, **you must populate its index** either via the provided editor command, or by running the following in your terminal:

```sh
bundle exec solargraph gems
```

Note: if you had installed the gem either using a `git:` or `github:` URL, or had vendored the gem using bundler, you will need to set up your [`.solargraph.yml`](https://solargraph.org/guides/configuration) to include the path to the gem's `lib` directory.

```yaml
include:
  - 'vendor/bundle/ruby/*/gems/terminal-shop-*/lib/**/*.rb'
```

Otherwise Solargraph will not be able to provide type information or auto-completion for any non-indexed libraries.

### Sorbet

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the `sorbet-runtime`.

What this means is that while you can use Sorbet to type check your code statically, and benefit from the [Sorbet Language Server](https://sorbet.org/docs/lsp) in your editor, there is no runtime type checking and execution overhead from Sorbet itself.

Due to limitations with the Sorbet type system, where a method otherwise can take an instance of `TerminalShop::BaseModel` class, you will need to use the `**` splat operator to pass the arguments:

Please follow Sorbet's [setup guides](https://sorbet.org/docs/adopting) for best experience.

```ruby
params = TerminalShop::Models::ProductListParams.new

terminal.product.list(**params)
```

Note: **This library emits an intentional warning under the [`tapioca` toolchain](https://github.com/Shopify/tapioca)**. This is normal, and does not impact functionality.

### Ruby LSP

The Ruby LSP has [best effort support](https://shopify.github.io/ruby-lsp/#guessed-types) for inferring type information from Ruby code, and as such it may not always be able to provide accurate type information.

## Advanced

### Making custom/undocumented requests

This library is typed for convenient access to the documented API.

If you need to access undocumented endpoints, params, or response properties, the library can still be used.

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a requests as seen in examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints, you can make requests using `client.request`. Options on the client will be respected (such as retries) when making this request.

```ruby
response = client.request(
    method: :post,
    path: '/undocumented/endpoint',
    query: {"dog": "woof"},
    headers: {"useful-header": "interesting-value"},
    body: {"he": "llo"},
  )
```

### Concurrency & Connection Pooling

The `TerminalShop::Client` instances are thread-safe, and should be re-used across multiple threads. By default, each `Client` have their own HTTP connection pool, with a maximum number of connections equal to thread count.

When the maximum number of connections has been checked out from the connection pool, the `Client` will wait for an in use connection to become available. The queue time for this mechanism is accounted for by the per-request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

Currently, `TerminalShop::Client` instances are only fork-safe if there are no in-flight HTTP requests.

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.1.0 or higher.
