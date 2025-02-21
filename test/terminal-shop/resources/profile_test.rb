# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ProfileTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_update
    response = @terminal.profile.update

    assert_pattern do
      response => TerminalShop::Models::ProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::ProfileAPI
      }
    end
  end

  def test_me
    response = @terminal.profile.me

    assert_pattern do
      response => TerminalShop::Models::ProfileMeResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::ProfileAPI
      }
    end
  end
end
