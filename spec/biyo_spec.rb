require 'spec_helper'

describe 'Biyo' do

  let(:test_hash) do
    test_result = Hash.new
    test_result[:name] = :halit
    test_result[:surname] = :alptekin

    test_result
  end

  let(:test_json) do
    test_json = {:name => 'halit', :surname => 'alptekin'}
    test_json_output = JSON.pretty_generate(test_json)

    test_json_output
  end

  let(:test_json_field) do
    test_json = {:name => 'halit', :surname => 'alptekin', :programming => ['python', 'ruby', 'c', 'perl', 'php'] }
    test_json_output = JSON.pretty_generate(test_json)

    test_json_output

  end

  let(:test_bio_hash) do
    test_bio = Biyo::Bio.new

    test_bio.new_field(:name => :halit)
    test_bio.new_field(:surname => :alptekin)
    test_bio.new_field(:programming => :python)

    test_bio
  end

  let(:test_bio_field) do
    test_bio = Biyo::Bio.new

    test_bio.new_field_key :name
    test_bio.new_field_value :halit
    test_bio.new_field_process

    test_bio.new_field_key :surname
    test_bio.new_field_value :alptekin
    test_bio.new_field_process

    test_list = %w(python ruby c perl php).join(',')
    test_bio.new_field_key :programming
    test_bio.new_field_value test_list
    test_bio.new_field_process

    test_bio
  end

  it('.add_field return type json') {
    test_bio_hash.output_json.should be_a(test_hash.to_json.class)
  }


  it('.add_field clear method'){
    test_bio_hash.output_json.should be_a(test_json.class)
  }

  it('.new_field key value type json'){
    test_bio_field.output_json.should be_a(test_json_field.class)
  }

  it('.new_field key value type hash'){
    test_bio_field.output_hash.should be_a(test_hash.class)
  }

  it('.new_field key value method'){
    test_bio_field.output_json.should be_a(test_json_field.class)
  }
end