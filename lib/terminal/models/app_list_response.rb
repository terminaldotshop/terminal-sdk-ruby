# frozen_string_literal: true

module Terminal
  module Models
    # @example
    # ```ruby
    # app_list_response => {
    #   data: -> { Terminal::ArrayOf[Terminal::Models::AppAPI] === _1 }
    # }
    # ```
    class AppListResponse < Terminal::BaseModel
      # @!attribute data
      #   List of apps.
      #
      #   @return [Array<Terminal::Models::AppAPI>]
      required :data, -> { Terminal::ArrayOf[Terminal::Models::AppAPI] }

      # @!parse
      #   # @param data [Array<Terminal::Models::AppAPI>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Terminal::BaseModel) -> void
    end
  end
end
