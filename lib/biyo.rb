require 'biyo/version'
require 'json'

module Biyo
  class Bio

    def initialize
      @collector = Hash.new
    end

    def new_field field_parameter
      field_parameter.each do |key, value|
        @collector[key] = value
      end

    end

    def output
      @collector.to_json
    end
  end
end
