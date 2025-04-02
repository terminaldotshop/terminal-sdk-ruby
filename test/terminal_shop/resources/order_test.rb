# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::OrderTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response =
      @terminal.order.create(
        address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX",
        card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX",
        variants: {var_XXXXXXXXXXXXXXXXXXXXXXXXX: 1}
      )

    assert_pattern do
      response => TerminalShop::Models::OrderCreateResponse
    end

    assert_pattern do
      response => {
        data: String
      }
    end
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
