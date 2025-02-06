# typed: strong

module TerminalShop
  module Models
    class AppAPI < TerminalShop::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :redirect_uri

      sig { params(id: String, name: String, redirect_uri: String).void }
      def initialize(id:, name:, redirect_uri:)
      end

      sig { override.returns({id: String, name: String, redirect_uri: String}) }
      def to_hash
      end
    end
  end
end
