# typed: strong

module TerminalShop
  module Models
    class AddressGetResponse < TerminalShop::BaseModel
      # Physical address associated with a Terminal shop user.
      sig { returns(TerminalShop::Models::AddressAPI) }
      attr_reader :data

      sig { params(data: T.any(TerminalShop::Models::AddressAPI, TerminalShop::Util::AnyHash)).void }
      attr_writer :data

      sig do
        params(data: T.any(TerminalShop::Models::AddressAPI, TerminalShop::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: TerminalShop::Models::AddressAPI}) }
      def to_hash
      end
    end
  end
end
