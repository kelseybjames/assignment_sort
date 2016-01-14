

def merge(array1, array2)
  new_array = []
  until array1.empty? || array2.empty?
    if array1[0] < array2[0]
      new_array << array1.shift
    elsif array2[0] < array1[0] 
      new_array << array2.shift
    else
      new_array << array1.shift 
      new_array << array2.shift
    end
  end
  
  new_array += array1
  new_array += array2
  
  new_array
end

def merge_sort(input_array)
  return input_array if input_array.length <= 1

  l_array = input_array[0...input_array.length/2]
  r_array = input_array[input_array.length/2..-1]

  l_array = merge_sort( l_array )
  r_array = merge_sort( r_array )

  merge(l_array, r_array)
end