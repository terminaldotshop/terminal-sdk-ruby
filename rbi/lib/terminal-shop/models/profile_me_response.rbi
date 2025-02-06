# typed: strong

module TerminalShop
  module Models
    class ProfileMeResponse < TerminalShop::BaseModel
      sig { returns(TerminalShop::Models::ProfileAPI) }
      attr_accessor :data

      sig { params(data: TerminalShop::Models::ProfileAPI).void }
      def initialize(data:)
      end

      sig { override.returns({data: TerminalShop::Models::ProfileAPI}) }
      def to_hash
      end
    end
  end
end
