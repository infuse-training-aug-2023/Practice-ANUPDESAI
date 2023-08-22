def serial_average(string)
	array = string.split('-')
	average = (array[1].to_f + array[2].to_f) / 2
	return "#{array[0]}-#{sprintf('%.2f', average).rjust(5, '0')}"
end
