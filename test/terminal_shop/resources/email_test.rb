# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::EmailTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response = @terminal.email.create(email: "john@example.com")

    assert_pattern do
      response => TerminalShop::Models::EmailCreateResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end
end
