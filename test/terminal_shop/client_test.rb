# frozen_string_literal: true

require_relative "test_helper"

class TerminalShopTest < Minitest::Test
  def setup
    Thread.current.thread_variable_set(:mock_sleep, [])
  end

  def teardown
    Thread.current.thread_variable_set(:mock_sleep, nil)
  end

  def test_raises_on_both_base_url_and_environment
    e = assert_raises(ArgumentError) do
      TerminalShop::Client.new(
        base_url: "https://localhost:8000",
        environment: "production"
      )
    end
    assert_match(/both environment and base_url given/, e.message)
  end

  def test_raises_on_unknown_environment
    e = assert_raises(ArgumentError) do
      TerminalShop::Client.new(environment: "wrong")
    end
    assert_match(/environment must be one of/, e.message)
  end

  def test_raises_on_missing_non_nullable_opts
    e = assert_raises(ArgumentError) do
      TerminalShop::Client.new
    end
    assert_match(/is required/, e.message)
  end

  class MockRequester
    # @return [Integer]
    attr_reader :response_code

    # @return [Hash{String=>String}]
    attr_reader :response_headers

    # @return [Object]
    attr_reader :response_data

    # @return [Array<Hash{Symbol=>Object}>]
    attr_accessor :attempts

    # @param response_code [Integer]
    # @param response_headers [Hash{String=>String}]
    # @param response_data [Object]
    def initialize(response_code, response_headers, response_data)
      @response_code = response_code
      @response_headers = response_headers
      @response_data = JSON.fast_generate(response_data)
      @attempts = []
    end

    # @param req [Hash{Symbol=>Object}]
    def execute(req)
      # Deep copy the request because it is mutated on each retry.
      attempts.push(Marshal.load(Marshal.dump(req)))
      headers = {"content-type" => "application/json", **response_headers}
      [response_code, headers, response_data.grapheme_clusters]
    end
  end

  def test_client_default_request_default_retry_attempts
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list
    end

    assert_equal(3, requester.attempts.length)
  end

  def test_client_given_request_default_retry_attempts
    terminal =
      TerminalShop::Client.new(
        base_url: "http://localhost:4010",
        bearer_token: "My Bearer Token",
        max_retries: 3
      )
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list
    end

    assert_equal(4, requester.attempts.length)
  end

  def test_client_default_request_given_retry_attempts
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list(request_options: {max_retries: 3})
    end

    assert_equal(4, requester.attempts.length)
  end

  def test_client_given_request_given_retry_attempts
    terminal =
      TerminalShop::Client.new(
        base_url: "http://localhost:4010",
        bearer_token: "My Bearer Token",
        max_retries: 3
      )
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list(request_options: {max_retries: 4})
    end

    assert_equal(5, requester.attempts.length)
  end

  def test_client_retry_after_seconds
    terminal =
      TerminalShop::Client.new(
        base_url: "http://localhost:4010",
        bearer_token: "My Bearer Token",
        max_retries: 1
      )
    requester = MockRequester.new(500, {"retry-after" => "1.3"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list
    end

    assert_equal(2, requester.attempts.length)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_client_retry_after_date
    terminal =
      TerminalShop::Client.new(
        base_url: "http://localhost:4010",
        bearer_token: "My Bearer Token",
        max_retries: 1
      )
    requester = MockRequester.new(500, {"retry-after" => (Time.now + 10).httpdate}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      Thread.current.thread_variable_set(:time_now, Time.now)
      terminal.product.list
      Thread.current.thread_variable_set(:time_now, nil)
    end

    assert_equal(2, requester.attempts.length)
    assert_in_delta(10, Thread.current.thread_variable_get(:mock_sleep).last, 1.0)
  end

  def test_client_retry_after_ms
    terminal =
      TerminalShop::Client.new(
        base_url: "http://localhost:4010",
        bearer_token: "My Bearer Token",
        max_retries: 1
      )
    requester = MockRequester.new(500, {"retry-after-ms" => "1300"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list
    end

    assert_equal(2, requester.attempts.length)
    assert_equal(1.3, Thread.current.thread_variable_get(:mock_sleep).last)
  end

  def test_retry_count_header
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list
    end

    retry_count_headers = requester.attempts.map { _1[:headers]["x-stainless-retry-count"] }
    assert_equal(%w[0 1 2], retry_count_headers)
  end

  def test_omit_retry_count_header
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list(request_options: {extra_headers: {"x-stainless-retry-count" => nil}})
    end

    retry_count_headers = requester.attempts.map { _1[:headers]["x-stainless-retry-count"] }
    assert_equal([nil, nil, nil], retry_count_headers)
  end

  def test_overwrite_retry_count_header
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(500, {}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::InternalServerError) do
      terminal.product.list(request_options: {extra_headers: {"x-stainless-retry-count" => "42"}})
    end

    retry_count_headers = requester.attempts.map { _1[:headers]["x-stainless-retry-count"] }
    assert_equal(%w[42 42 42], retry_count_headers)
  end

  def test_client_redirect_307
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(307, {"location" => "/redirected"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::APIConnectionError) do
      terminal.product.list(request_options: {extra_headers: {}})
    end

    assert_equal("/redirected", requester.attempts.last[:url].path)
    assert_equal(requester.attempts.first[:method], requester.attempts.last[:method])
    assert_equal(requester.attempts.first[:body], requester.attempts.last[:body])
    assert_equal(
      requester.attempts.first[:headers]["content-type"],
      requester.attempts.last[:headers]["content-type"]
    )
  end

  def test_client_redirect_303
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(303, {"location" => "/redirected"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::APIConnectionError) do
      terminal.product.list(request_options: {extra_headers: {}})
    end

    assert_equal("/redirected", requester.attempts.last[:url].path)
    assert_equal(:get, requester.attempts.last[:method])
    assert_nil(requester.attempts.last[:body])
    assert_nil(requester.attempts.last[:headers]["Content-Type"])
  end

  def test_client_redirect_auth_keep_same_origin
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(307, {"location" => "/redirected"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::APIConnectionError) do
      terminal.product.list(request_options: {extra_headers: {"Authorization" => "Bearer xyz"}})
    end

    assert_equal(
      requester.attempts.first[:headers]["authorization"],
      requester.attempts.last[:headers]["authorization"]
    )
  end

  def test_client_redirect_auth_strip_cross_origin
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(307, {"location" => "https://example.com/redirected"}, {})
    terminal.requester = requester

    assert_raises(TerminalShop::APIConnectionError) do
      terminal.product.list(request_options: {extra_headers: {"Authorization" => "Bearer xyz"}})
    end

    assert_nil(requester.attempts.last[:headers]["Authorization"])
  end

  def test_default_headers
    terminal = TerminalShop::Client.new(base_url: "http://localhost:4010", bearer_token: "My Bearer Token")
    requester = MockRequester.new(200, {}, {})
    terminal.requester = requester
    terminal.product.list
    headers = requester.attempts.first[:headers]

    refute_empty(headers["accept"])
    refute_empty(headers["content-type"])
  end
end
