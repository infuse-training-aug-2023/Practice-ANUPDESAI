require 'json'
require 'faker'


puts ARGV[0]
exec = ENV['EXEC']
# exec = true
if exec
  fake_name = Faker::Name.name
  fake_address = Faker::Address.full_address
  fake_email = Faker::Internet.email

  # Create a hash with fake data
  data = {
    name: fake_name,
    address: fake_address,
    email: fake_email
  }

  # Convert the hash to JSON string
  json_string = JSON.generate(data)

  puts "Generated JSON string:"
  puts json_string

  # Parse the JSON string back to a hash
  parsed_data = JSON.parse(json_string)

  File.open(ARGV[0], 'w') do |file|
    file.puts  data[0] + " " +data[1]

  end
end
