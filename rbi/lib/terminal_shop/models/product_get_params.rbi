# typed: strong

module TerminalShop
  module Models
    class ProductGetParams < TerminalShop::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Internal::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
