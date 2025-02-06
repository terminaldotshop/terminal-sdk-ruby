# frozen_string_literal: true

require_relative "../test_helper"

class Terminal::Test::Resources::AppTest < Minitest::Test
  def before_all
    @terminal = Terminal::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @terminal.app.create(
      id: "cli_XXXXXXXXXXXXXXXXXXXXXXXXX",
      name: "Example App",
      redirect_uri: "https://example.com/callback"
    )

    assert_pattern do
      response => Terminal::Models::AppCreateResponse
    end
  end

  def test_list
    response = @terminal.app.list

    assert_pattern do
      response => Terminal::Models::AppListResponse
    end
  end

  def test_delete
    response = @terminal.app.delete("cli_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => Terminal::Models::AppDeleteResponse
    end
  end

  def test_get
    response = @terminal.app.get("cli_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => Terminal::Models::AppGetResponse
    end
  end
end
