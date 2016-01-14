

def merge(array1, array2)
  new_array = []
  # l_index, r_index = 0, 0
  until array1.empty? || array2.empty?
    print array1
    print array2

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
  
  print new_array
  puts "end merge"
  new_array
end

# print merge( [1, 2, 3, 4, 5], [4, 5, 6, 7 ] )

def merge_sort(input_array)
  return input_array if input_array.length <= 1

  l_array = input_array[0...input_array.length/2]
  r_array = input_array[input_array.length/2..-1]

  print l_array
  print r_array
  puts "end mergesort"

  merge_sort( l_array )
  merge_sort( r_array )

  input_array = merge( l_array, r_array )
end

merge_sort( [1, 3, 2] )

# merge_sort( [1, 2, 3, 4, 5] )
# merge_sort( [1, 2, 3, 4] )

# function merge(leftArr, rightArr){

#     // var newArr = [];

#     // compare leftArr[0] and rightArr[0]
#     // whichever is smaller, push it onto newArr

#     // repeat the process, but don't reuse elements,
#     // until you have pushed all the elements from
#     // leftArr and rightArr onto newArr in sorted order

#     // return newArr
# }


# function mergeSort(array) {
#     // if the array is one element long, just return it

#     // mergeSort() the left half of the array

#     // mergeSort() the right half of the array

#     // merge() the two halves

#     // return the merged array
# }
