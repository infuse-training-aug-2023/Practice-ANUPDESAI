
def serial_average(string)
	array = string.split('-')
	if array.length() > 3 or array.length() < 2
		raise "Invalid Input"
		return
	end
	average = (array[1].to_f + array[2].to_f) / 2
	return "#{array[0]}-#{average.round(2)}"
end
