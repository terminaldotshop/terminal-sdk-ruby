# frozen_string_literal: true

require_relative "../test_helper"

class TerminalShop::Test::Resources::ProfileTest < TerminalShop::Test::ResourceTest
  def test_update
    response = @terminal.profile.update

    assert_pattern do
      response => TerminalShop::Models::ProfileUpdateResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::ProfileAPI
      }
    end
  end

  def test_me
    response = @terminal.profile.me

    assert_pattern do
      response => TerminalShop::Models::ProfileMeResponse
    end

    assert_pattern do
      response => {
        data: TerminalShop::Models::ProfileAPI
      }
    end
  end
end
