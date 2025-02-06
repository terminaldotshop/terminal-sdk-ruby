# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::CardTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @terminal.card.create(token: "tok_1N3T00LkdIwHu7ixt44h1F8k")

    assert_pattern do
      response => TerminalShop::Models::CardCreateResponse
    end
  end

  def test_list
    response = @terminal.card.list

    assert_pattern do
      response => TerminalShop::Models::CardListResponse
    end
  end

  def test_delete
    response = @terminal.card.delete("crd_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CardDeleteResponse
    end
  end

  def test_collect
    response = @terminal.card.collect

    assert_pattern do
      response => TerminalShop::Models::CardCollectResponse
    end
  end
end
