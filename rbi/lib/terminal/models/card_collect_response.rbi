# typed: strong

module Terminal
  module Models
    class CardCollectResponse < Terminal::BaseModel
      sig { returns(Terminal::Models::CardCollectResponse::Data) }
      attr_accessor :data

      sig { params(data: Terminal::Models::CardCollectResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Terminal::Models::CardCollectResponse::Data}) }
      def to_hash
      end

      class Data < Terminal::BaseModel
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
