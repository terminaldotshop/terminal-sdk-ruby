# typed: strong

module TerminalShop
  module Resources
    class View
      sig do
        params(
          request_options: T.nilable(
            T.any(
              TerminalShop::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(TerminalShop::Models::ViewInitResponse)
      end
      def init(request_options: {})
      end

      sig { params(client: TerminalShop::Client).void }
      def initialize(client:)
      end
    end
  end
end
