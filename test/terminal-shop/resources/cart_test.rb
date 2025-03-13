# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::CartTest < TerminalShop::Test::ResourceTest
  def test_clear
    response = @terminal.cart.clear

    assert_pattern do
      response => TerminalShop::Models::CartClearResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_convert
    response = @terminal.cart.convert

    assert_pattern do
      response => TerminalShop::Models::CartConvertResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::OrderAPI
      }
    end
  end

  def test_get
    response = @terminal.cart.get

    assert_pattern do
      response => TerminalShop::Models::CartGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::CartAPI
      }
    end
  end

  def test_redeem_gift_card_required_params
    response = @terminal.cart.redeem_gift_card(gift_card_id: "giftCardID")

    assert_pattern do
      response => TerminalShop::Models::CartRedeemGiftCardResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::CartRedeemGiftCardResponse::Data
      }
    end
  end

  def test_remove_gift_card
    response = @terminal.cart.remove_gift_card

    assert_pattern do
      response => TerminalShop::Models::CartRemoveGiftCardResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_set_address_required_params
    response = @terminal.cart.set_address(address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CartSetAddressResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_set_card_required_params
    response = @terminal.cart.set_card(card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::CartSetCardResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_set_item_required_params
    response = @terminal.cart.set_item(product_variant_id: "var_XXXXXXXXXXXXXXXXXXXXXXXXX", quantity: 2)

    assert_pattern do
      response => TerminalShop::Models::CartSetItemResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::CartAPI
      }
    end
  end
end
