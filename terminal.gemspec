# frozen_string_literal: true

require_relative "lib/terminal/version"

Gem::Specification.new do |s|
  s.name = "terminal"
  s.version = Terminal::VERSION
  s.summary = "Ruby library to access the Terminal API"
  s.authors = ["Terminal"]
  s.email = "dev@terminal.com"
  s.files = Dir["lib/**/*.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/terminal/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/terminal-ruby"
  s.metadata["rubygems_mfa_required"] = "true"
end
