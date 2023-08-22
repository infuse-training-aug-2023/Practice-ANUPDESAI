def element_at(arr, index)
  return arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
  return arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  return arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
  return arr[start_pos, length]
end

arr = [10,20,30,40,50,60,70,80]

puts element_at(arr, 2)
puts "\n"
puts inclusive_range(arr, 1, 3)
puts "\n"
puts non_inclusive_range(arr, 1, 3)
puts "\n"
puts start_and_length(arr, 1, 3)





  