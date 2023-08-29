require 'test/unit'
require_relative 'solution-3'

class TestSerialAverage < Test::Unit::TestCase
  def test_serial_average
    assert_equal("001-45.67", serial_average("001-23.45-67.89"))
    assert_equal("003-99.99", serial_average("003-99.99-99.99"))
    assert_raise_with_message(RuntimeError, "Invalid Input") do serial_average("--004-00.0-00.0") end
  end
end
