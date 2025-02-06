# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::CartTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_convert
    response = @terminal.cart.convert

    assert_pattern do
      response => TerminalShop::Models::CartConvertResponse
    end
  end

  def test_get
    response = @terminal.cart.get

    assert_pattern do
      response => TerminalShop::Models::CartGetResponse
    end
  end

  def test_set_address_required_params
    response = @terminal.cart.set_address(address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CartSetAddressResponse
    end
  end

  def test_set_card_required_params
    response = @terminal.cart.set_card(card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CartSetCardResponse
    end
  end

  def test_set_item_required_params
    response = @terminal.cart.set_item(product_variant_id: "var_XXXXXXXXXXXXXXXXXXXXXXXXX", quantity: 2)

    assert_pattern do
      response => TerminalShop::Models::CartSetItemResponse
    end
  end
end
