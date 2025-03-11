# typed: strong

module TerminalShop
  module Models
    class CartRedeemGiftCardResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CartRedeemGiftCardResponse::Data) }
      def data
      end

      sig do
        params(_: TerminalShop::Models::CartRedeemGiftCardResponse::Data)
          .returns(TerminalShop::Models::CartRedeemGiftCardResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::CartRedeemGiftCardResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CartRedeemGiftCardResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        sig { returns(Integer) }
        def applied_amount
        end

        sig { params(_: Integer).returns(Integer) }
        def applied_amount=(_)
        end

        sig { returns(String) }
        def gift_card_id
        end

        sig { params(_: String).returns(String) }
        def gift_card_id=(_)
        end

        sig { returns(Integer) }
        def remaining_balance
        end

        sig { params(_: Integer).returns(Integer) }
        def remaining_balance=(_)
        end

        sig do
          params(
            applied_amount: Integer,
            gift_card_id: String,
            remaining_balance: Integer
          ).returns(T.attached_class)
        end
        def self.new(applied_amount:, gift_card_id:, remaining_balance:)
        end

        sig { override.returns({applied_amount: Integer, gift_card_id: String, remaining_balance: Integer}) }
        def to_hash
        end
      end
    end
  end
end
