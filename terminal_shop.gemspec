# frozen_string_literal: true

require_relative "lib/terminal_shop/version"

Gem::Specification.new do |s|
  s.name = "terminal-shop"
  s.version = TerminalShop::VERSION
  s.summary = "Ruby library to access the Terminal API"
  s.authors = ["Terminal"]
  s.email = "dev@terminal.com"
  s.homepage = "https://gemdocs.org/gems/terminal-shop"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/terminaldotshop/terminal-sdk-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.0.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
