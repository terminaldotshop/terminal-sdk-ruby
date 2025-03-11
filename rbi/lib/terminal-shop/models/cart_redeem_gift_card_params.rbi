# typed: strong

module TerminalShop
  module Models
    class CartRedeemGiftCardParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(String) }
      def gift_card_id
      end

      sig { params(_: String).returns(String) }
      def gift_card_id=(_)
      end

      sig do
        params(
          gift_card_id: String,
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(gift_card_id:, request_options: {})
      end

      sig { override.returns({gift_card_id: String, request_options: TerminalShop::RequestOptions}) }
      def to_hash
      end
    end
  end
end
