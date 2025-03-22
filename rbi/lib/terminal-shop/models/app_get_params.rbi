# typed: strong

module TerminalShop
  module Models
    class AppGetParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig do
        params(request_options: T.any(TerminalShop::RequestOptions, TerminalShop::Util::AnyHash))
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
