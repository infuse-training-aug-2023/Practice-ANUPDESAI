def skip_sports(sports, skip)
	return sports[skip..-1] if skip >= 0
	return sports
end

