# typed: strong

module TerminalShop
  module Resources
    class Address
      sig do
        params(
          city: String,
          country: String,
          name: String,
          street1: String,
          zip: String,
          phone: String,
          province: String,
          street2: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::AddressCreateResponse)
      end
      def create(
        city:,
        country:,
        name:,
        street1:,
        zip:,
        phone: nil,
        province: nil,
        street2: nil,
        request_options: {}
      )
      end

      sig do
        params(request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(TerminalShop::Models::AddressListResponse)
      end
      def list(request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::AddressDeleteResponse)
      end
      def delete(id, request_options: {})
      end

      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(TerminalShop::Models::AddressGetResponse)
      end
      def get(id, request_options: {})
      end

      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
