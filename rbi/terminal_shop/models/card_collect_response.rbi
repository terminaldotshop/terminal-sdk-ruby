# typed: strong

module TerminalShop
  module Models
    class CardCollectResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::CardCollectResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # URL for collecting card information.
      sig { returns(TerminalShop::Models::CardCollectResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: TerminalShop::Models::CardCollectResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: TerminalShop::Models::CardCollectResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # URL for collecting card information.
        data:
      )
      end

      sig do
        override.returns(
          { data: TerminalShop::Models::CardCollectResponse::Data }
        )
      end
      def to_hash
      end

      class Data < TerminalShop::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              TerminalShop::Models::CardCollectResponse::Data,
              TerminalShop::Internal::AnyHash
            )
          end

        # Temporary URL that allows a user to enter credit card details over https at
        # terminal.shop.
        sig { returns(String) }
        attr_accessor :url

        # URL for collecting card information.
        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Temporary URL that allows a user to enter credit card details over https at
          # terminal.shop.
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end
    end
  end
end
