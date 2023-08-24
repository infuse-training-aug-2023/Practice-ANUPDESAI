def element_at(arr,index)
    if arr.length() > index and index >= 0
      return arr[index]
    else
      return -1
    end
end

def inclusive_range(arr,start_pos, end_pos)
    if (start_pos > 0 and end_pos < arr.length())
      return arr[start_pos..end_pos]
    else
      return []
    end
end

def non_inclusive_range(arr,start_pos, end_pos)
    if (start_pos > 0 and end_pos < arr.length())
      return arr[start_pos...end_pos]
    else
      return []
    end
end

def start_and_length(arr,start_pos, length)
    if (start_pos > 0 and start_pos + length < arr.length)
      return arr[start_pos..start_pos + length]
    else
      return -1
    end
end
