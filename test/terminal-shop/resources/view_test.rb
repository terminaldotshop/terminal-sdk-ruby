# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ViewTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_init
    response = @terminal.view.init

    assert_pattern do
      response => TerminalShop::Models::ViewInitResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::ViewInitResponse::Data
      }
    end
  end
end
