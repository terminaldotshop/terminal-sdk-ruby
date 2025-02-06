# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::SubscriptionTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @terminal.subscription.create(
      id: "sub_XXXXXXXXXXXXXXXXXXXXXXXXX",
      address_id: "shp_XXXXXXXXXXXXXXXXXXXXXXXXX",
      card_id: "crd_XXXXXXXXXXXXXXXXXXXXXXXXX",
      frequency: :fixed,
      product_variant_id: "var_XXXXXXXXXXXXXXXXXXXXXXXXX",
      quantity: 1
    )

    assert_pattern do
      response => TerminalShop::Models::SubscriptionCreateResponse
    end
  end

  def test_list
    response = @terminal.subscription.list

    assert_pattern do
      response => TerminalShop::Models::SubscriptionListResponse
    end
  end

  def test_delete
    response = @terminal.subscription.delete("sub_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::SubscriptionDeleteResponse
    end
  end
end
