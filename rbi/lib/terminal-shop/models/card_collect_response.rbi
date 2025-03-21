# typed: strong

module TerminalShop
  module Models
    class CardCollectResponse < TerminalShop::BaseModel
      # URL for collecting card information.
      sig { returns(TerminalShop::Models::CardCollectResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(TerminalShop::Models::CardCollectResponse::Data, TerminalShop::Util::AnyHash))
          .returns(T.any(TerminalShop::Models::CardCollectResponse::Data, TerminalShop::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(data: T.any(TerminalShop::Models::CardCollectResponse::Data, TerminalShop::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardCollectResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        # Temporary URL that allows a user to enter credit card details over https at
        #   terminal.shop.
        sig { returns(String) }
        def url
        end

        sig { params(_: String).returns(String) }
        def url=(_)
        end

        # URL for collecting card information.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(url:)
        end

        sig { override.returns({url: String}) }
        def to_hash
        end
      end
    end
  end
end
