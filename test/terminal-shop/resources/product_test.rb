# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ProductTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @terminal.product.list

    assert_pattern do
      response => TerminalShop::Models::ProductListResponse
    end
  end
end
