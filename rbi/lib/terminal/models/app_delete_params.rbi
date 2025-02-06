# typed: strong

module Terminal
  module Models
    class AppDeleteParams < Terminal::BaseModel
      extend Terminal::RequestParameters::Converter
      include Terminal::RequestParameters

      sig { params(request_options: T.any(Terminal::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: Terminal::RequestOptions}) }
      def to_hash
      end
    end
  end
end
