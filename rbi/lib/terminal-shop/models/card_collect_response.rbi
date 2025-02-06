# typed: strong

module TerminalShop
  module Models
    class CardCollectResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::CardCollectResponse::Data) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::CardCollectResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::CardCollectResponse::Data}) }
      def to_hash
      end

      class Data < TerminalShop::BaseModel
        sig { returns(String) }
        attr_accessor :url

        sig { params(url: String).void }
        def initialize(url:)
        end

        sig { override.returns({url: String}) }
        def to_hash
        end
      end
    end
  end
end
