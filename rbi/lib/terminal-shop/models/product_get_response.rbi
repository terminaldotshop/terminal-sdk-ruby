# typed: strong

module TerminalShop
  module Models
    class ProductGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProductAPI) }
      def data
      end

      sig { params(_: TerminalShop::Models::ProductAPI).returns(TerminalShop::Models::ProductAPI) }
      def data=(_)
      end

      sig { params(data: TerminalShop::Models::ProductAPI).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ProductAPI}) }
      def to_hash
      end
    end
  end
end
