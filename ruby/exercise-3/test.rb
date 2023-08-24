require 'test/unit'
require_relative 'solution3'

class TestCheckHash < Test::Unit::TestCase
  def test_check_hash
    hash = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      "name" => "john",
      "age" => "25",
    }
    expected_output = {
      1 => "one",
      3 => "three",
      5 => "five",
      543121 => "100"
    }
    assert_equal(expected_output, check_hash(hash))
  end
end
