# typed: strong

module TerminalShop
  # @api private
  class PooledNetRequester
    RequestShape = T.type_alias do
      {method: Symbol, url: URI::Generic, headers: T::Hash[String, String], body: T.anything, deadline: Float}
    end

    class << self
      # @api private
      sig { params(url: URI::Generic).returns(Net::HTTP) }
      def connect(url)
      end

      # @api private
      sig { params(conn: Net::HTTP, deadline: Float).void }
      def calibrate_socket_timeout(conn, deadline)
      end

      # @api private
      sig do
        params(request: TerminalShop::PooledNetRequester::RequestShape, blk: T.proc.params(arg0: String).void)
          .returns(Net::HTTPGenericRequest)
      end
      def build_request(request, &blk)
      end
    end

    # @api private
    sig { params(url: URI::Generic, deadline: Float, blk: T.proc.params(arg0: Net::HTTP).void).void }
    private def with_pool(url, deadline:, &blk)
    end

    # @api private
    sig do
      params(request: TerminalShop::PooledNetRequester::RequestShape)
        .returns([Integer, Net::HTTPResponse, T::Enumerable[String]])
    end
    def execute(request)
    end

    # @api private
    sig { params(size: Integer).returns(T.attached_class) }
    def self.new(size: Etc.nprocessors)
    end
  end
end
