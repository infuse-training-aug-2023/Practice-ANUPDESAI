require 'test/unit'
require 'json'
require_relative 'solution5'

class TestJsonFile < Test::Unit::TestCase
  def setup
    @data = {
      "name" => "John Doe",
      "age" => 30,
      "city" => "New York"
    }
    @json_file = "data_test.json"
    File.open(@json_file, "w") do |f|
      f.write(JSON.generate(@data))
    end
  end

  def teardown
    File.delete(@json_file)
  end

  def test_json_file
    timestamp = Time.now.utc.to_i
    your_name = "anup"

    expected_output = {
      "first_name" => "John",
      "last_name" => "Doe",
      "age" => 30,
      "city" => "New York"
    }

    File.open("#{your_name}_#{timestamp}.json", "w") do |f|
      f.write(JSON.generate(expected_output))
    end

    json_file = File.read("#{your_name}_#{timestamp}.json")
    actual_output = JSON.parse(json_file)

    assert_equal(expected_output, actual_output)
  end
end
