require 'spec_helper'

describe 'Biyo' do


  it('.add_field return type') {
    test_bio = Biyo::Bio.new

    test_bio.new_field(:name => :halit)
    test_bio.new_field(:surname => :alptekin)

    test_result = Hash.new
    test_result[:name] = :halit
    test_result[:surname] = :alptekin

    test_bio.output_json.should be_a(test_result.to_json.class)
  }

  it('.add_field clear method'){
    test_bio = Biyo::Bio.new

    test_bio.new_field(:name => :halit)
    test_bio.new_field(:surname => :alptekin)

    test_json = {:name => 'halit', :surname => 'alptekin'}
    test_json_output = JSON.pretty_generate(test_json)

    test_bio.output_json.should be_a(test_json_output.class)

  }
end