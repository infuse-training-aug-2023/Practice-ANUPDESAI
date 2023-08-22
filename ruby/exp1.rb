def serial_average(input)
    arr = input.split('-')
    avg = (arr[1].to_f+arr[2].to_f)/2
    return "#{arr[0]}-#{avg.round(2)}"
end

input = "123-10.00-20.00"
result = serial_average(input)
puts result