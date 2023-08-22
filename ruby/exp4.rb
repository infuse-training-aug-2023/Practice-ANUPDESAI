def skip_sports(sports, skip)
    return sports[skip..-1] if skip >= 0
    return sports  
  end
  
  sports_array = ["football", "basketball", "soccer", "tennis", "baseball", "hockey"]
  skip = 2
  
  result = skip_sports(sports_array, skip)
  puts result.inspect
  