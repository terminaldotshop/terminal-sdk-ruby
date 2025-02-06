# frozen_string_literal: true

require_relative "../test_helper"

class Terminal::Test::Resources::ProfileTest < Minitest::Test
  def before_all
    @terminal = Terminal::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_update
    response = @terminal.profile.update

    assert_pattern do
      response => Terminal::Models::ProfileUpdateResponse
    end
  end

  def test_me
    response = @terminal.profile.me

    assert_pattern do
      response => Terminal::Models::ProfileMeResponse
    end
  end
end
