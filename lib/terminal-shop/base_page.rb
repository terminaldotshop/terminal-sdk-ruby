# frozen_string_literal: true

module TerminalShop
  # @example
  # ```ruby
  # if page.has_next?
  #   page = page.next_page
  # end
  # ```
  #
  # @example
  # ```ruby
  # page.auto_paging_each do |product|
  #   puts(product)
  # end
  # ```
  #
  # @example
  # ```ruby
  # products = page
  #   .to_enum
  #   .lazy
  #   .select { _1.object_id.even? }
  #   .map(&:itself)
  #   .take(2)
  #   .to_a
  #
  # products => Array
  # ```
  module BasePage
    # @return [Boolean]
    def next_page? = (raise NotImplementedError)

    # @raise [TerminalShop::APIError]
    # @return [TerminalShop::BasePage]
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    def auto_paging_each(&) = (raise NotImplementedError)

    # @return [Enumerable]
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @api private
    #
    # @param client [TerminalShop::BaseClient]
    # @param req [Hash{Symbol=>Object}]
    # @param headers [Hash{String=>String}, Net::HTTPHeader]
    # @param page_data [Object]
    def initialize(client:, req:, headers:, page_data:)
      @client = client
      @req = req
      super()
    end
  end
end
