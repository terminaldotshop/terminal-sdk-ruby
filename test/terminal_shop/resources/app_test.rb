# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::AppTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response = @terminal.app.create(name: "Example App", redirect_uri: "https://example.com/callback")

    assert_pattern do
      response => TerminalShop::Models::AppCreateResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::AppCreateResponse::Data
      }
    end
  end

  def test_list
    response = @terminal.app.list

    assert_pattern do
      response => TerminalShop::Models::AppListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::Internal::Type::ArrayOf[TerminalShop::AppAPI])
      }
    end
  end

  def test_delete
    response = @terminal.app.delete("cli_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::AppDeleteResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_get
    response = @terminal.app.get("cli_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::AppGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::AppAPI
      }
    end
  end
end
