# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::OrderTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_list
    response = @terminal.order.list

    assert_pattern do
      response => TerminalShop::Models::OrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::ArrayOf[TerminalShop::Models::OrderAPI])
      }
    end
  end

  def test_get
    response = @terminal.order.get("ord_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::OrderGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::OrderAPI
      }
    end
  end
end
