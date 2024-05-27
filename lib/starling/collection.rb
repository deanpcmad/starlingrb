module Starling
  class Collection
    attr_reader :data, :total

    def self.from_response(response, type:, key:)
      body = response.body

      new(
        data: body[key].map { |attrs| type.new(attrs) },
        total: body[key].count
      )
    end

    def initialize(data:, total:)
      @data = data
      @total = total
    end
  end
end
