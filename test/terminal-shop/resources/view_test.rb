# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ViewTest < TerminalShop::Test::ResourceTest
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
