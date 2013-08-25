require 'spec_helper'

describe 'Biyo' do


  it('.add_field return type') {
    test_bio = Biyo::Bio.new

    test_bio.new_field(:name => :halit)
    test_bio.new_field(:surname => :alptekin)

    test_result = Hash.new
    test_result[:name] = :halit
    test_result[:surname] = :alptekin

    test_bio.output.should be_a(test_result.to_json.class)
  }
end