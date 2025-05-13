# typed: strong

module TerminalShop
  module Models
    class SubscriptionListParams < TerminalShop::Internal::Type::BaseModel
      extend TerminalShop::Internal::Type::RequestParameters::Converter
      include TerminalShop::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::SubscriptionListParams,
            TerminalShop::Internal::AnyHash
          )
        end

      sig do
        params(request_options: TerminalShop::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: TerminalShop::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
