# typed: strong

module TerminalShop
  module Models
    class TokenGetResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::TokenAPI) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::TokenAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::TokenAPI}) }
      def to_hash
      end
    end
  end
end
