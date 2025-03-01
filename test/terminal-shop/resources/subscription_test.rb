# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::SubscriptionTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response = @terminal.subscription.create(
      id: "sub_XXXXXXXXXXXXXXXXXXXXXXXXX",
      address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX",
      card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX",
      product_variant_id: "var_XXXXXXXXXXXXXXXXXXXXXXXXX",
      quantity: 1
    )

    assert_pattern do
      response => TerminalShop::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_list
    response = @terminal.subscription.list

    assert_pattern do
      response => TerminalShop::Models::SubscriptionListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::ArrayOf[TerminalShop::Models::SubscriptionAPI])
      }
    end
  end

  def test_delete
    response = @terminal.subscription.delete("sub_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::SubscriptionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end
end
