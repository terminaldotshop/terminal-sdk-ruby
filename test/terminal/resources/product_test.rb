# frozen_string_literal: true

require_relative "../test_helper"

class Terminal::Test::Resources::ProductTest < Minitest::Test
  def before_all
    @terminal = Terminal::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @terminal.product.list

    assert_pattern do
      response => Terminal::Models::ProductListResponse
    end
  end
end
