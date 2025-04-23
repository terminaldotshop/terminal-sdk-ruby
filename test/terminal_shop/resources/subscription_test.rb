# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::SubscriptionTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response =
      @terminal.subscription.create(
        id: "sub_XXXXXXXXXXXXXXXXXXXXXXXXX",
        address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX",
        card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX",
        created: "2024-06-29T19:36:19.000Z",
        price: 2200,
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

  def test_update
    response = @terminal.subscription.update("sub_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::SubscriptionUpdateResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::SubscriptionAPI
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
        data: ^(TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::SubscriptionAPI])
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

  def test_get
    response = @terminal.subscription.get("sub_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::SubscriptionGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::SubscriptionAPI
      }
    end
  end
end
