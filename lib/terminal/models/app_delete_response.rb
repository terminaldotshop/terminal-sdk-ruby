# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # app_delete_response => {
    #   data: :ok
    # }
    # ```
    class AppDeleteResponse < Terminal::BaseModel
      # @!attribute data
      #
      #   @return [Symbol, :ok]
      required :data, const: :ok

      # @!parse
      #   # @param data [Symbol, :ok]
      #   #
      #   def initialize(data: :ok, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
