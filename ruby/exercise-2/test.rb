require 'test/unit'
require_relative 'solution2'

class TestArrayMethods < Test::Unit::TestCase
  def test_element_at
    assert_equal(1, element_at([1, 2, 3], 0))
    assert_equal("b", element_at(["a", "b", "c"], 1))
    assert_equal(nil, element_at([1, 2, 3], 5))
  end

  def test_inclusive_range
    assert_equal([1, 2, 3], inclusive_range([1, 2, 3], 0, 2))
    assert_equal(["a", "b", "c"], inclusive_range(["a", "b", "c"], 0, 2))
    assert_equal([1, 2], inclusive_range([1, 2, 3], 0, 1))
  end

  def test_non_inclusive_range
    assert_equal([1, 2], non_inclusive_range([1, 2, 3], 0, 2))
    assert_equal(["a", "b"], non_inclusive_range(["a", "b", "c"], 0, 2))
    assert_equal([1], non_inclusive_range([1, 2, 3], 0, 1))
  end

  def test_start_and_length
    assert_equal([1, 2], start_and_length([1, 2, 3], 0, 2))
    assert_equal(["a", "b"], start_and_length(["a", "b", "c"], 0, 2))
    assert_equal([2, 3], start_and_length([1, 2, 3], 1, 2))
  end
end
