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
        data: ^(TerminalShop::Internal::Type::ArrayOf[TerminalShop::ProductAPI])
      }
    end
  end

  def test_get
    response = @terminal.product.get("prd_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::ProductGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::ProductAPI
      }
    end
  end
end
