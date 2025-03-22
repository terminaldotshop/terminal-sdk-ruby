# typed: strong

module TerminalShop
  module Models
    class EmailCreateResponse < TerminalShop::BaseModel
      sig { returns(Symbol) }
      attr_accessor :data

      sig { params(data: Symbol).returns(T.attached_class) }
      def self.new(data: :ok)
      end

      sig { override.returns({data: Symbol}) }
      def to_hash
      end
    end
  end
end
