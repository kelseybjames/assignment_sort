

def insert(array, right_index, value)
    # value is the value of array[right_index + 1]
    # right_index is the furthest right sorted element

    # Step through sorted elements right to left.
    # As long as your value is less than the element
    # at array[i] and you still have elements
    i = right_index
    while(i >= 0 && array[i] > value)
        # copy the element
        array[i+1] = array[i]
        i -= 1
    end

    # insert the actual element
    array[i+1] = value;
end

def insertion_sort( input_array )
    index_counter = 0
    while index_counter < input_array.length - 1
        insert( input_array, index_counter, input_array[index_counter + 1] )
        index_counter += 1
    end
    input_array
end