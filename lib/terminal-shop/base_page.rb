# frozen_string_literal: true

module TerminalShop
  # @private
  #
  # @abstract
  #
  module BasePage
    # @return [Boolean]
    #
    def next_page? = (raise NotImplementedError)

    # @raise [TerminalShop::APIError]
    # @return [TerminalShop::BasePage]
    #
    def next_page = (raise NotImplementedError)

    # @param blk [Proc]
    #
    # @return [void]
    #
    def auto_paging_each(&) = (raise NotImplementedError)

    # @return [Enumerable]
    #
    def to_enum = super(:auto_paging_each)

    alias_method :enum_for, :to_enum

    # @!parse
    #   # @private
    #   #
    #   # @param client [TerminalShop::BaseClient]
    #   # @param req [Hash{Symbol=>Object}]
    #   # @param headers [Hash{String=>String}, Net::HTTPHeader]
    #   # @param page_data [Object]
    #   #
    #   def initialize(client:, req:, headers:, page_data:); end
  end
end
