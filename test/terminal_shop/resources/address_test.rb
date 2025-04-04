# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::AddressTest < TerminalShop::Test::ResourceTest
  def test_create_required_params
    response =
      @terminal.address.create(
        city: "Anytown",
        country: "US",
        name: "John Doe",
        street1: "123 Main St",
        zip: "12345"
      )

    assert_pattern do
      response => TerminalShop::Models::AddressCreateResponse
    end

    assert_pattern do
      response => {
        data: String
      }
    end
  end

  def test_list
    response = @terminal.address.list

    assert_pattern do
      response => TerminalShop::Models::AddressListResponse
    end

    assert_pattern do
      response => {
        data: ^(TerminalShop::Internal::Type::ArrayOf[TerminalShop::Models::AddressAPI])
      }
    end
  end

  def test_delete
    response = @terminal.address.delete("shp_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::AddressDeleteResponse
    end

    assert_pattern do
      response => {
        data: Symbol
      }
    end
  end

  def test_get
    response = @terminal.address.get("shp_XXXXXXXXXXXXXXXXXXXXXXXXX")

    assert_pattern do
      response => TerminalShop::Models::AddressGetResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::AddressAPI
      }
    end
  end
end
