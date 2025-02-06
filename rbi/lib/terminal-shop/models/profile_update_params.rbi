# typed: strong

module TerminalShop
  module Models
    class ProfileUpdateParams < TerminalShop::BaseModel
      extend TerminalShop::RequestParameters::Converter
      include TerminalShop::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          email: T.nilable(String),
          name: T.nilable(String),
          request_options: T.any(TerminalShop::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(email: nil, name: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            email: T.nilable(String),
            name: T.nilable(String),
            request_options: TerminalShop::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
