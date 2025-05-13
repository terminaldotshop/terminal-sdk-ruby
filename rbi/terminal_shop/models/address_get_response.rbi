# typed: strong

module TerminalShop
  module Models
    class AddressGetResponse < TerminalShop::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            TerminalShop::Models::AddressGetResponse,
            TerminalShop::Internal::AnyHash
          )
        end

      # Physical address associated with a Terminal shop user.
      sig { returns(TerminalShop::AddressAPI) }
      attr_reader :data

      sig { params(data: TerminalShop::AddressAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: TerminalShop::AddressAPI::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Physical address associated with a Terminal shop user.
        data:
      )
      end

      sig { override.returns({ data: TerminalShop::AddressAPI }) }
      def to_hash
      end
    end
  end
end
