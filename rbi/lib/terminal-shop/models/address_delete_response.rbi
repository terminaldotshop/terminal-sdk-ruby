# typed: strong

module TerminalShop
  module Models
    class AddressDeleteResponse < TerminalShop::BaseModel
      sig { returns(Symbol) }
      def data
      end

      sig { params(_: Symbol).returns(Symbol) }
      def data=(_)
      end

      sig { params(data: Symbol).void }
      def initialize(data: :ok)
      end

      sig { override.returns({data: Symbol}) }
      def to_hash
      end
    end
  end
end
