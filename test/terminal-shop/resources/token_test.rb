# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::TokenTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create
    response = @terminal.token.create

    assert_pattern do
      response => TerminalShop::Models::TokenCreateResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::TokenCreateResponse::Data
      }
    end
  end

  def test_list
    response = @terminal.token.list

    assert_pattern do
      response => TerminalShop::Models::TokenListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::ArrayOf[TerminalShop::Models::TokenAPI])
      }
    end
  end

  def test_delete
    response = @terminal.token.delete("pat_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::TokenDeleteResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_get
    response = @terminal.token.get("pat_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::TokenGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::TokenAPI
      }
    end
  end
end
