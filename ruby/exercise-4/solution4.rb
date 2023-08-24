def skip_sports(arr,number)
  if (number > 0 and number < arr.length)
      temp = []

    arr.each_with_index { |ele, index|
       if index >= number
          temp.append(index.to_s+": "+ ele)
      end
      }
   		 return temp
	end
  return []
end
