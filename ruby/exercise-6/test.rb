require 'test/unit'
require 'base64'
require_relative 'solution6'

class TestBase64Encode < Test::Unit::TestCase
  def setup
    @txt_file = File.read("content.txt")
    @your_name = "anup.txt"
    @string = "the string that will be base encoded"
    @encoded_string = Base64.encode64(@string).chomp
    @new_content = @txt_file.gsub(@string, @encoded_string)
    File.open(@your_name, "w") do |f|
      f.write(@new_content)
    end
  end

  def test_base64_encode
    expected_output = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ dGhlIHN0cmluZyB0aGF0IHdpbGwgYmUgYmFzZSBlbmNvZGVk ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
    actual_output = File.read("jason.txt")
    assert_equal(expected_output, actual_output)
  end
end
