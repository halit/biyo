require 'biyo/version'
require 'json'

module Biyo
  class Bio

    def initialize
      @collector = Hash.new

      @temp_key = Array.new
      @temp_value = Array.new

    end

    def new_field field_parameter

      field_parameter.each do |key, value|
        @collector[key.to_s.tr("\n", "")] = value.to_s.tr("\n", "")
      end

    end

    def new_field_key key
      @temp_key = key
    end

    def new_field_value value

      if value.to_s.include? ','
        value.split(',').each do |v|
          @temp_value.push(v)
        end
      else
        @temp_value = value
      end
    end

    def new_field_process
      @collector[@temp_key] = @temp_value

      @temp_key = Array.new
      @temp_value = Array.new

    end

    def output_json
      @collector.to_json
    end

    def output_hash
      @collector
    end
  end
end
