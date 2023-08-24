require 'test/unit'
require_relative 'solution4'

class TestSkipSports < Test::Unit::TestCase
  def test_skip_sports
    array = ["football", "basketball", "baseball", "hockey", "soccer"]
    expected_output = ["3: hockey", "4: soccer"]
    assert_equal(expected_output, skip_sports(array, 3))

    array = ["tennis", "golf", "swimming", "cycling", "running"]
    expected_output = ["4: running"]
    assert_equal(expected_output, skip_sports(array, 4))

    array = ["volleyball", "badminton", "table tennis", "squash", "rugby"]
    expected_output = []
    assert_equal(expected_output, skip_sports(array, 5))
  end
end
