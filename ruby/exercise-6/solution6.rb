require 'base64'

content = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."

File.open("content.txt", "w") do |f|
    f.write(content)
end

text_file = File.read("content.txt")

encoded_content = Base64.encode64("the string that will be base encoded").chomp

string_replace = text_file.gsub("the string that will be base encoded", encoded_content)

your_name = "Anup"

File.open("#{your_name}.txt", "w") do |f|
    f.print(string_replace)
end
