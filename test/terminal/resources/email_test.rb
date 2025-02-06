# frozen_string_literal: true

require_relative "../test_helper"

class Terminal::Test::Resources::EmailTest < Minitest::Test
  def before_all
    @terminal = Terminal::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @terminal.email.create(email: "john@example.com")

    assert_pattern do
      response => Terminal::Models::EmailCreateResponse
    end
  end
end
