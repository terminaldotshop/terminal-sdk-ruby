# typed: strong

module TerminalShop
  module Models
    class OrderGetParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { params(request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
