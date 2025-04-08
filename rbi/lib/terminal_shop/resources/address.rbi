# typed: strong

module TerminalShop
  module Resources
    class Address
      # Create and add a shipping address to the current user.
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
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::AddressCreateResponse)
      end
      def create(
        # City of the address.
        city:,
        # ISO 3166-1 alpha-2 country code of the address.
        country:,
        # The recipient's name.
        name:,
        # Street of the address.
        street1:,
        # Zip code of the address.
        zip:,
        # Phone number of the recipient.
        phone: nil,
        # Province or state of the address.
        province: nil,
        # Apartment, suite, etc. of the address.
        street2: nil,
        request_options: {}
      ); end
      # Get the shipping addresses associated with the current user.
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              TerminalShop::Internal::AnyHash
            )
          )
        )
          .returns(TerminalShop::Models::AddressListResponse)
      end
      def list(request_options: {}); end

      # Delete a shipping address from the current user.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::AddressDeleteResponse)
      end
      def delete(
        # ID of the shipping address to delete.
        id,
        request_options: {}
      ); end
      # Get the shipping address with the given ID.
      sig do
        params(
          id: String,
          request_options: T.nilable(T.any(TerminalShop::RequestOptions, TerminalShop::Internal::AnyHash))
        )
          .returns(TerminalShop::Models::AddressGetResponse)
      end
      def get(
        # ID of the shipping address to get.
        id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: TerminalShop::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
