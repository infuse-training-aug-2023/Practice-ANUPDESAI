require 'base64'

content = File.read('C:\Users\anup.desai\Desktop\infuse\Practice-ANUPDESAI\solution6\input.txt')

encoded_content = Base64.encode64(" the string that will be base encoded.
")

your_name = "Anup"  
output_filename = "#{your_name}.txt"

File.open(output_filename, 'w') do |file|
    file.write(content + encoded_content)
  end

  
 
 