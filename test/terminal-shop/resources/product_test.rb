# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ProductTest < TerminalShop::Test::ResourceTest
  def test_list
    response = @terminal.product.list

    assert_pattern do
      response => TerminalShop::Models::ProductListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::ArrayOf[TerminalShop::Models::ProductAPI])
      }
    end
  end
end
