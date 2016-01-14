def pass_through_array(input_array)
  has_swap = false
  (0...input_array.length - 1).each do |i|
    if input_array[i] > input_array[i + 1]
      input_array[i], input_array[i + 1] = input_array[i + 1], input_array[i]
      has_swap = true
    end
  end
  has_swap
end

def bubble_sort(input_array)
  needs_sort = true
  while needs_sort
    needs_sort = pass_through_array(input_array)
  end
  input_array
end