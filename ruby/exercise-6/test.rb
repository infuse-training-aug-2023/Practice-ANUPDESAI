require 'test/unit'
require 'base64'
require_relative 'solution6'

class TestBase64Encode < Test::Unit::TestCase

  def test_base64_encode
    expected_output = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “dGhlIHN0cmluZyB0aGF0IHdpbGwgYmUgYmFzZSBlbmNvZGVk ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters,a practice that was abolished in English law in 1852."

    @path = "C:/Users/anup.desai/Desktop/infuse/Practice-ANUPDESAI/ruby/exercise-6/content.txt"
    file = Encode.new()
    file.encode(@path,"anup")

    actual_output = File.read("anup.txt")

    assert_equal(expected_output, actual_output)
  end
end
