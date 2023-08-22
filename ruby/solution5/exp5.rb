require 'json'
require 'time'

data = JSON.parse(File.read('C:\Users\anup.desai\Desktop\infuse\Practice-ANUPDESAI\ruby\solution5\exp5.json'))
full_name = data['name']
first_name, last_name = full_name.split(' ')
new_data = {
  "first_name": first_name,
  "last_name": last_name
}

your_name = "Anup"
timestamp = Time.now.utc.strftime("%Y-%m-%d_%H-%M-%S")
new_file_name = "#{your_name}_#{timestamp}.json"

File.open(new_file_name, 'w') do |file|
  file.write(JSON.pretty_generate(new_data))
end

puts "New JSON file '#{new_file_name}' created."
