# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::CardTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response = @terminal.card.create(token: "tok_1N3T00LkdIwHu7ixt44h1F8k")

    assert_pattern do
      response => TerminalShop::Models::CardCreateResponse
    end

    assert_pattern do
      response => {
        data: String
      }
    end
  end

  def test_list
    response = @terminal.card.list

    assert_pattern do
      response => TerminalShop::Models::CardListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::ArrayOf[TerminalShop::Models::CardAPI])
      }
    end
  end

  def test_delete
    response = @terminal.card.delete("crd_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CardDeleteResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_collect
    response = @terminal.card.collect

    assert_pattern do
      response => TerminalShop::Models::CardCollectResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::CardCollectResponse::Data
      }
    end
  end
end
