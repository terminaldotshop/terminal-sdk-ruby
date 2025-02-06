# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::AddressTest < Minitest::Test
  def before_all
    @terminal = TerminalShop::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      bearer_token: "My Bearer Token"
    )
  end

  def test_create_required_params
    response = @terminal.address.create(
      city: "Anytown",
      country: "US",
      name: "John Doe",
      street1: "123 Main St",
      zip: "12345"
    )

    assert_pattern do
      response => TerminalShop::Models::AddressCreateResponse
    end
  end

  def test_list
    response = @terminal.address.list

    assert_pattern do
      response => TerminalShop::Models::AddressListResponse
    end
  end

  def test_delete
    response = @terminal.address.delete("shp_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::AddressDeleteResponse
    end
  end
end
